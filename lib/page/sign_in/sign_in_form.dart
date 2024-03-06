import 'package:spot_gab_app/importer.dart';

class SignInForm extends ConsumerWidget {
  const SignInForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SignInForm'),
      ),
      body: const Center(
        child: Text('SignInForm'),
      ),
    );
  }
}
