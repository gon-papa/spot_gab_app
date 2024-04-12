import 'package:spot_gab_app/importer.dart';

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
        child: const _BottomNavigationBar(),
      ),
      body: body,
    );
  }
}

class _BottomNavigationBar extends ConsumerWidget {
  const _BottomNavigationBar();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.read(userNotifierProvider.notifier).currentState;
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 10, 0, 20),
      child: Row(
        children: [
          _BottomNavigationItem.home(),
          _BottomNavigationItem.mypage(uuid: user?.uuid ?? ''),
        ],
      ),
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
              color: currentPath == basePath ? Colors.blue : Colors.grey,
            ),
            Text(
              label,
              style: TextStyle(
                color: currentPath == basePath ? Colors.blue : Colors.grey,
                fontSize: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

final mainScaffoldKeyProvider = Provider((ref) {
  return GlobalKey<ScaffoldState>();
});

final _currentPathProvider = Provider<String?>(
  (ref) => throw UnimplementedError(),
);
