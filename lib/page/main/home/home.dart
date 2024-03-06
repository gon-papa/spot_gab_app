import 'package:spot_gab_app/importer.dart';

class Home extends ConsumerWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: PrimaryButton(
          onPressed: () async {
            final se = ref.watch(secure_token_provider);
            await se.deleteToken();
            // SignIn画面に遷移
            SignInRoute().go(context);
          },
          width: 300,
          height: 20,
          text: "Sign Out",
        ),
      ),
    );
  }
}
