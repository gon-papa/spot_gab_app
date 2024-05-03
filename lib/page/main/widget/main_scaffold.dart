import 'package:now_go_app/importer.dart';

class MainScaffold extends ConsumerWidget {
  const MainScaffold({
    Key? key,
    required this.body,
    required this.fullPath,
  }) : super(key: key);

  final Widget body;
  final String? fullPath;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      bottomNavigationBar: ProviderScope(
        overrides: [_currentPathProvider.overrideWithValue(fullPath)],
        child: BottomAppBar(
          padding: EdgeInsets.symmetric(vertical: 0),
          height: 40.h,
          surfaceTintColor: Theme.of(context).colorScheme.surface,
          child: const _BottomNavigationBar(),
        ),
      ),
      body: body,
      floatingActionButton: SizedBox(
        width: 50.w,
        height: 50.w,
        child: FloatingActionButton(
          heroTag: 'post',
          elevation: 5,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(100)),
          ),
          backgroundColor: Theme.of(context).extension<MyColors>()!.nowGoColor,
          onPressed: () {
            PostRoute().push(context);
          },
          child: const Icon(Icons.add_box, size: 35),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class _BottomNavigationBar extends ConsumerWidget {
  const _BottomNavigationBar();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.read(userNotifierProvider.notifier).currentState;
    return Row(
      children: [
        _BottomNavigationItem.home(),
        HorizontalMargin(width: 20),
        _BottomNavigationItem.mypage(uuid: user?.uuid ?? ''),
      ],
    );
  }
}

class _BottomNavigationItem extends ConsumerWidget {
  const _BottomNavigationItem({
    required this.label,
    required this.path,
    required this.icon,
  });

  factory _BottomNavigationItem.home() => _BottomNavigationItem(
        label: 'Home',
        icon: Icons.home,
        path: const HomeRoute().location,
      );

  factory _BottomNavigationItem.mypage({required String uuid}) =>
      _BottomNavigationItem(
        label: 'myPage',
        icon: Icons.person,
        path: MyPageRoute().location,
      );

  final String label;
  final String path;
  final IconData icon;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentPath = ref.watch(_currentPathProvider);
    // クエリ文字列対策
    final basePath = Uri.parse(path).path;

    return Expanded(
      child: TextButton(
        onPressed: () {
          context.go(path);
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              size: 25,
              color: currentPath == basePath
                  ? Theme.of(context).extension<MyColors>()!.nowGoColor
                  : Colors.grey,
            ),
            Text(
              label,
              style: TextStyle(
                color: currentPath == basePath
                    ? Theme.of(context).extension<MyColors>()!.nowGoColor
                    : Colors.grey,
                fontSize: 10.sp,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

final mainScaffoldKeyProvider = Provider.autoDispose((ref) {
  return GlobalKey<ScaffoldState>();
});

final _currentPathProvider = Provider<String?>(
  (ref) => throw UnimplementedError(),
);
