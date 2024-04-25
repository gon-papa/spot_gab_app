import 'package:now_go_app/importer.dart';
import 'package:now_go_app/page/main/geo_coding_provider.dart';

typedef _Providers = PostProviders;
typedef _MapProviders = MapProviders;

class PostLocation extends HookConsumerWidget {
  const PostLocation();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final focusNode = ref.watch(_Providers.focusNodeProvider);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      focusNode.unfocus();
    });
    final asyncMyPosition = useFuture(
      // キャッシュ
      useMemoized(
        () => ref.read(_MapProviders.getMyPositionProvider)(context: context),
        [],
      ),
      initialData: null,
    );

    if (asyncMyPosition.connectionState == ConnectionState.waiting) {
      return const WaitingView();
    }

    if (asyncMyPosition.hasData) {
      return _Body();
    }

    if (asyncMyPosition.hasError || asyncMyPosition.error == null) {
      print(asyncMyPosition.error);
      return const HasErrorView();
    }
    return const SizedBox();
  }
}

class _Body extends ConsumerWidget {
  const _Body();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('位置情報を選択'),
      ),
      body: Stack(
        children: [
          _GoogleMapView(),
          Positioned(
            top: 10.h,
            left: 0,
            right: 0,
            child: LocationSearchBar(onFunction: (String address) async {
              final placemark = await ref
                  .read(GeoCodingProviders.placemarkFromAddressProvider)(
                address: address,
              );
              ref.read(_Providers.postPositionProvider.notifier).state = LatLng(
                placemark.first.latitude,
                placemark.first.longitude,
              );
              final controller =
                  ref.read(_Providers.googleMapControllerProvider);
              final latLng = ref.watch(_Providers.postPositionProvider);

              if (controller != null) {
                controller.animateCamera(
                  CameraUpdate.newLatLng(latLng),
                );
              }
            }),
          ),
          Positioned(
            bottom: 90.h,
            right: 10.w,
            child: CurrentLocationButton(
              controller: ref.watch(_Providers.googleMapControllerProvider),
              onPressed: () {
                final myLatLng = ref.watch(_MapProviders.myLatLngProvider);
                ref.read(_Providers.postPositionProvider.notifier).state =
                    myLatLng;
              },
            ),
          ),
          Positioned(
            bottom: 40.h,
            left: 0,
            right: 0,
            child: Center(child: _SubmitButton()),
          ),
        ],
      ),
    );
  }
}

class _GoogleMapView extends ConsumerWidget {
  const _GoogleMapView();

  Future<void> updateCamera(
      GoogleMapController controller, LatLng latLng) async {
    controller.animateCamera(
      CameraUpdate.newLatLng(latLng),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final postPosition = ref.watch(_Providers.postPositionProvider);
    final postPositionNotifer =
        ref.read(_Providers.postPositionProvider.notifier);
    final user = ref.watch(userNotifierProvider);

    return WidgetMarkerGoogleMap(
      initialCameraPosition: CameraPosition(
        target: LatLng(0.0, 0.0),
        zoom: 15,
      ),
      onMapCreated: (GoogleMapController controller) {
        final myLatLng = ref.watch(_MapProviders.myLatLngProvider);
        postPositionNotifer.state = LatLng(
          myLatLng.latitude,
          myLatLng.longitude,
        );
        ref.read(_Providers.googleMapControllerProvider.notifier).state =
            controller;
        // widgetビルド後に現在地に移動
        updateCamera(controller, postPositionNotifer.state);
      },
      onTap: (LatLng latLng) {
        postPositionNotifer.state = latLng;
        updateCamera(
          ref.read(_Providers.googleMapControllerProvider.notifier).state!,
          postPositionNotifer.state,
        );
      },
      widgetMarkers: [
        WidgetMarker(
          position: postPosition,
          markerId: 'postPosition',
          widget: UserMarker(
            imagePath: user?.image?.path,
            onTap: () {},
            color: Colors.blue,
          ),
        )
      ],
      myLocationButtonEnabled: false,
    );
  }
}

class _SubmitButton extends ConsumerWidget {
  const _SubmitButton();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MainButton(
      onPressed: () {},
      width: 300,
      height: 35,
      text: "投稿する",
      fontSize: 14,
    );
  }
}
