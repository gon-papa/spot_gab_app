import 'package:spot_gab_app/importer.dart';

class HasErrorView extends StatelessWidget {
  const HasErrorView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('エラーが発生しました。'),
    );
  }
}
