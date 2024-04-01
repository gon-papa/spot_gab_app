import 'package:spot_gab_app/importer.dart';

class MyPage extends ConsumerWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      key: ref.watch(mainScaffoldKeyProvider),
      body: SafeArea(
        child: Row(
          children: [
            Center(
              // child: UserMarker(),
              child: Text("UserMarker"),
            ),
            Center(
              // child: UserMarker(),
              child: Text("UserMarker"),
            ),
          ],
        ),
      ),
    );
  }
}
