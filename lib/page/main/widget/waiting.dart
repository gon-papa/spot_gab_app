import 'package:now_go_app/importer.dart';

class WaitingView extends StatelessWidget {
  const WaitingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(),
    );
  }
}
