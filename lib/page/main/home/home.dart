import 'package:now_go_app/importer.dart';
import 'package:now_go_app/page/main/geo_coding_provider.dart';

typedef _Providers = HomeProviders;
typedef _MapProviders = MapProviders;

class Home extends HookConsumerWidget {
  Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
  _Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      key: ref.watch(mainScaffoldKeyProvider),
      body: SafeArea(
        top: false,
        child: Stack(
          children: [
            _GoogleMapView(),
            Positioned(
              top: 30.h,
              left: 0,
              right: 0,
              child: LocationSearchBar(
                onFunction: (String address) async {
                  final placemark = await ref
                      .read(GeoCodingProviders.placemarkFromAddressProvider)(
                    address: address,
                  );

                  final controller =
                      ref.watch(_Providers.googleMapControllerProvider);
                  if (controller != null) {
                    controller.animateCamera(
                      CameraUpdate.newLatLng(
                        LatLng(
                          placemark.first.latitude,
                          placemark.first.longitude,
                        ),
                      ),
                    );
                  }
                },
              ),
            ),
            Positioned(
              bottom: 20.h,
              left: 0,
              right: 0,
              child: _CardList(),
            ),
            Positioned(
              right: 10.w,
              bottom: 130.h,
              child: CurrentLocationButton(
                controller: ref.watch(_Providers.googleMapControllerProvider),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _GoogleMapView extends HookConsumerWidget {
  _GoogleMapView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final myLatLng = ref.watch(_MapProviders.myLatLngProvider.notifier).state;
    final user = ref.watch(userNotifierProvider);
    return WidgetMarkerGoogleMap(
      initialCameraPosition: CameraPosition(
        target: LatLng(
          myLatLng.latitude,
          myLatLng.longitude,
        ),
        zoom: 15,
      ),
      onMapCreated: (GoogleMapController controller) {
        ref.read(_Providers.googleMapControllerProvider.notifier).state =
            controller;
      },
      myLocationEnabled: false,
      myLocationButtonEnabled: false,
      widgetMarkers: [
        WidgetMarker(
          position: LatLng(
            myLatLng.latitude,
            myLatLng.longitude,
          ),
          markerId: user?.uuid ?? "myPosition",
          widget: UserMarker(
            imagePath: user?.image?.path,
            onTap: () {},
            color: Colors.blue,
          ),
        ),
        WidgetMarker(
          position: LatLng(37.78593862779881, -122.40096497312153),
          markerId: "1",
          widget: UserMarker(
            onTap: () {},
            imagePath: null,
            color: Colors.red,
          ),
        ),
        WidgetMarker(
          position: LatLng(37.784474463803726, -122.40341109377674),
          markerId: "2",
          widget: UserMarker(
            onTap: () {},
            imagePath: null,
            color: Colors.green,
          ),
        ),
      ],
    );
  }
}

class _CardList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 仮のデータリスト
    final List<String> entries = <String>['A', 'B', 'C', 'D', 'E'];

    return Container(
      height: 100.h,
      child: PageView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: entries.length,
        controller: PageController(
          viewportFraction: 0.9, // カードの幅
          initialPage: 0,
        ),
        itemBuilder: (BuildContext context, int index) {
          return _Card();
        },
      ),
    );
  }
}

class _Card extends ConsumerWidget {
  final String userName = "Maximmilian";
  final String userId = "@maxjacobson";
  final String postTime = "3min";
  final String postContent = "腹減ってんねんけど皆今なにしてるの?";
  final String userImageUrl = "https://via.placeholder.com/150"; // プレースホルダーのURL
  final int commentCount = 25; // コメント数

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 仮のデータを使用
    final user = ref.watch(userNotifierProvider);
    return Card(
      surfaceTintColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            UserIcon(
              imagePath: user?.image?.path,
              onTap: () {},
              size: 60,
              color: Colors.grey,
            ),
            SizedBox(width: 5.w),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        user?.accountName ?? '',
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(width: 3.w),
                      Expanded(
                        child: Text(
                          '${user?.idAccount ?? ' '} $postTime',
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: TextStyle(
                            fontSize: 12.sp,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Expanded(
                    child: Text(
                      postContent,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 3,
                      style: TextStyle(
                        fontSize: 12.sp,
                        color: Theme.of(context).colorScheme.onSurface,
                      ),
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      ActionIcon(
                        icon: Assets.icons.commentIcon,
                        onTap: () {},
                        text: '$commentCount',
                        size: 10,
                      ),
                      Spacer(),
                      ActionIcon(
                        icon: Assets.icons.bookmarkIcon,
                        onTap: () {},
                        size: 10,
                      ),
                      Spacer(),
                      ActionIcon(
                        icon: Assets.icons.heartIcon,
                        onTap: () {},
                        text: '$commentCount',
                        size: 10,
                      ),
                      Spacer(),
                      ActionIcon(
                        icon: Assets.icons.shareIcon,
                        onTap: () {},
                        size: 10,
                      ),
                      SizedBox(width: 15.w),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
