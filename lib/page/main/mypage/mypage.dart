import 'package:spot_gab_app/importer.dart';

class MyPage extends ConsumerWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      key: ref.watch(mainScaffoldKeyProvider),
      body: Text('MyPage'),
    );
  }
}
