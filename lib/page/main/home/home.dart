import 'dart:async';

import 'package:flutter_svg/svg.dart';
import 'package:spot_gab_app/importer.dart';

typedef _Providers = HomeProviders;

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
      return SuccessView();
    }

    if (asyncMyPosition.hasError || asyncMyPosition.error == null) {
      return const HasErrorView();
    }
    return const SizedBox();
  }
}

class WaitingView extends StatelessWidget {
  const WaitingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(),
    );
  }
}

class HasErrorView extends StatelessWidget {
  const HasErrorView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('エラーが発生しました。'),
    );
  }
}

class SuccessView extends ConsumerWidget {
  SuccessView({Key? key}) : super(key: key);

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
          ],
        ),
      ),
    );
  }
}

class _GoogleMapView extends ConsumerWidget {
  final Completer<GoogleMapController> _controller = Completer();
  _GoogleMapView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final position = ref.watch(_Providers.myPositionProvider.notifier).state;
    return GoogleMap(
      initialCameraPosition: CameraPosition(
        target: LatLng(
          position?.latitude ?? 0.0,
          position?.longitude ?? 0.0,
        ),
        zoom: 15,
      ),
      onMapCreated: (GoogleMapController controller) {
        _controller.complete(controller);
      },
      myLocationEnabled: true,
      myLocationButtonEnabled: true,
    );
  }
}

class _SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
          CircleAvatar(
              // backgroundImage: NetworkImage('ユーザーアイコンのURL'),
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

class _Card extends StatelessWidget {
  // 仮のデータを使用
  final String userName = "Maximmilian";
  final String userId = "@maxjacobson";
  final String postTime = "3min";
  final String postContent = "腹減ってんねんけど皆今なにしてるの?";
  final String userImageUrl = "https://via.placeholder.com/150"; // プレースホルダーのURL
  final int commentCount = 25; // コメント数

  @override
  Widget build(BuildContext context) {
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
            CircleAvatar(
              backgroundImage: NetworkImage(userImageUrl),
              radius: 25,
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
                        userName,
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(width: 3.w),
                      Expanded(
                        child: Text(
                          '$userId $postTime',
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
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      ActionIcon(
                        icon: Assets.icons.commentIcon,
                        onTap: () {},
                        text: '$commentCount',
                        size: 10,
                      ),
                      ActionIcon(
                        icon: Assets.icons.bookmarkIcon,
                        onTap: () {},
                        size: 10,
                      ),
                      ActionIcon(
                        icon: Assets.icons.heartIcon,
                        onTap: () {},
                        text: '$commentCount',
                        size: 10,
                      ),
                      ActionIcon(
                        icon: Assets.icons.shareIcon,
                        onTap: () {},
                        size: 10,
                      ),
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
