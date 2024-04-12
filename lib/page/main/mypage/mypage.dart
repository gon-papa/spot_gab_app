import 'package:flutter/material.dart';
import 'package:spot_gab_app/importer.dart';

typedef _Providers = MyPageProviders;

class MyPage extends HookConsumerWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useFuture(
      useMemoized(
        () => ref.read(userNotifierProvider.notifier).me(ref, context),
      ),
    );
    return Scaffold(
      key: ref.watch(mainScaffoldKeyProvider),
      body: SafeArea(
        child: CustomScrollView(
          slivers: <Widget>[
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 14.0,
                  right: 14.0,
                ),
                child: _UserInfo(),
              ),
            ),
            SliverPersistentHeader(
              delegate: _SliverAppBarDelegate(
                minHeight: 30.h,
                maxHeight: 30.h,
                child: _OpenChatBar(),
              ),
              pinned: true,
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  const Text('fafafa'),
                  const Text('fafafa'),
                  const Text('fafafa'),
                  const Text('fafafa'),
                  const Text('fafafa'),
                  const Text('fafafa'),
                  const Text('fafafa'),
                  const Text('fafafa'),
                  const Text('fafafa'),
                  const Text('fafafa'),
                  const Text('fafafa'),
                  const Text('fafafa'),
                  const Text('fafafa'),
                  const Text('fafafa'),
                  const Text('fafafa'),
                  const Text('fafafa'),
                  const Text('fafafa'),
                  const Text('fafafa'),
                  const Text('fafafa'),
                  const Text('fafafa'),
                  const Text('fafafa'),
                  const Text('fafafa'),
                  const Text('fafafa'),
                  const Text('fafafa'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _UserInfo extends ConsumerWidget {
  const _UserInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        const SizedBox(height: 15),
        _UserInfoHeader(),
        const SizedBox(height: 5),
        _UserName(),
        const SizedBox(height: 15),
        _ProfileContent(),
        const SizedBox(height: 15),
        _FollowInfo(),
        const SizedBox(height: 15),
      ],
    );
  }
}

class _UserInfoHeader extends ConsumerWidget {
  const _UserInfoHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(userNotifierProvider);
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        GestureDetector(
          onTapDown: (details) {
            ref.read(_Providers.showUserImage)(
              context,
              details.globalPosition,
              user,
            );
          },
          child: UserIcon(
            imagePath: user?.imagePath,
            onTap: null,
            size: 90,
            color: Colors.grey,
          ),
        ),
        const HorizontalMargin(width: 10),
        Expanded(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _UserLink(),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(
                        color: Colors.blue,
                      ),
                    ),
                    onPressed: () {
                      MyPageEditRoute().go(context);
                    },
                    child: const Text(
                      '編集',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              const VerticalMargin(height: 5),
            ],
          ),
        )
      ],
    );
  }
}

class _UserLink extends ConsumerWidget {
  const _UserLink({Key? key}) : super(key: key);

  String truncateString(String? originalText, int limit) {
    if (originalText == null) return '';
    return (originalText.length > limit)
        ? '${originalText.substring(0, limit)}...'
        : originalText;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(userNotifierProvider);

    return user != null && user.link != null && user.link!.isNotEmpty
        ? Row(
            children: [
              Assets.icons.linkIcon.svg(width: 20, height: 20),
              const HorizontalMargin(width: 3),
              InkWell(
                onTap: () {
                  ref.watch(webViewControllerProvider(user.link!));
                  WebViewRoute(url: user.link!).push(context);
                },
                child: Text(
                  this.truncateString(user.link, 20),
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: Colors.blue,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          )
        : SizedBox();
  }
}

class _UserName extends ConsumerWidget {
  const _UserName({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(userNotifierProvider);
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: Text(
            user?.accountName ?? '',
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 20.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          width: double.infinity,
          child: Text(
            user?.idAccount ?? '',
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 13.sp,
              color: Colors.grey,
            ),
          ),
        ),
      ],
    );
  }
}

class _ProfileContent extends ConsumerWidget {
  const _ProfileContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(userNotifierProvider);
    return SizedBox(
      width: double.infinity,
      child: Text(
        user?.profile ?? '',
        textAlign: TextAlign.left,
        maxLines: 6,
        style: TextStyle(
          fontSize: 13.sp,
        ),
      ),
    );
  }
}

class _FollowInfo extends StatelessWidget {
  const _FollowInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              '100',
              style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            const HorizontalMargin(width: 5),
            Text(
              'フォロー中',
              style: TextStyle(
                fontSize: 12.sp,
                color: Colors.grey,
              ),
            ),
            const HorizontalMargin(width: 10),
            Text(
              '100',
              style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            const HorizontalMargin(width: 5),
            Text(
              'フォロワー',
              style: TextStyle(
                fontSize: 12.sp,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

// 固定ヘッダー(openchatのヘッダーを固定している)
class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate({
    required this.minHeight,
    required this.maxHeight,
    required this.child,
  });

  final double minHeight;
  final double maxHeight;
  final Widget child;

  @override
  double get minExtent => minHeight;

  @override
  double get maxExtent => maxHeight > minHeight ? maxHeight : minHeight;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return SizedBox.expand(child: child);
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return maxHeight != oldDelegate.maxHeight ||
        minHeight != oldDelegate.minHeight ||
        child != oldDelegate.child;
  }
}

class _OpenChatBar extends StatelessWidget {
  const _OpenChatBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.onSurface,
        ),
        width: double.infinity,
        height: 30.h,
        child: Center(
          child: Text(
            'OpenChat',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
