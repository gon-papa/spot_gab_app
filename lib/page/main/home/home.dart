import 'package:spot_gab_app/importer.dart';

typedef _Providers = HomeProviders;
typedef _MarkerProviders = GabMarkerProvider;

class Home extends HookConsumerWidget {
  Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncMyPosition = useFuture(
      // キャッシュ
      useMemoized(
          () => ref.read(_Providers.getMyPositionProvider)(context: context),
          []),
      initialData: null,
    );

    if (asyncMyPosition.connectionState == ConnectionState.waiting) {
      return const WaitingView();
    }

    if (asyncMyPosition.hasData) {
      return _Body();
    }

    if (asyncMyPosition.hasError || asyncMyPosition.error == null) {
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
              child: _SearchBar(),
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
              child: _LocationButton(),
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
    final position = ref.watch(_Providers.myPositionProvider.notifier).state;
    final user = ref.watch(userNotifierProvider);
    return WidgetMarkerGoogleMap(
      initialCameraPosition: CameraPosition(
        target: LatLng(
          position?.latitude ?? 0.0,
          position?.longitude ?? 0.0,
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
            position?.latitude ?? 0.0,
            position?.longitude ?? 0.0,
          ),
          markerId: user?.uuid ?? "myPosition",
          widget: UserMarker(
            imagePath: user?.imagePath,
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

class _LocationButton extends ConsumerWidget {
  _LocationButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mapController = ref.watch(_Providers.googleMapControllerProvider);
    final myPosition = ref.watch(_Providers.myPositionProvider.notifier);
    return FloatingActionButton(
      onPressed: () {
        if (myPosition.state != null && mapController != null) {
          mapController.animateCamera(CameraUpdate.newLatLng(
            LatLng(myPosition.state!.latitude, myPosition.state!.longitude),
          ));
          ref.watch(SignOutProviders.signOutSubmitProvider)(context: context);
        } else {
          ref.read(errorMessageHandle)("現在地情報が取得できませんでした", context);
        }
      },
      child: Icon(Icons.my_location),
      backgroundColor: Theme.of(context).colorScheme.background,
      foregroundColor: Theme.of(context).colorScheme.onBackground,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
        side: BorderSide(
          color: Theme.of(context).colorScheme.onBackground,
          width: 0.1,
        ),
      ),
    );
  }
}

class _SearchBar extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(userNotifierProvider);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 2),
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
          ),
        ],
      ),
      child: Row(
        children: <Widget>[
          Assets.images.spotGabIcon.image(
            width: 25.w,
            height: 25.h,
          ),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: "キーワード検索",
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(horizontal: 10),
              ),
            ),
          ),
          UserIcon(
            imagePath: user?.imagePath,
            onTap: () {},
            size: 45,
          ),
        ],
      ),
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
              imagePath: user?.imagePath,
              onTap: () {},
              size: 60,
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
