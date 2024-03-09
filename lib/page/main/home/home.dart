import 'package:spot_gab_app/importer.dart';

typedef _SignOutProviders = SignOutProviders;

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
            ref.read(_SignOutProviders.signOutSubmitProvider)(
              context: context,
            );
          },
          width: 300,
          height: 20,
          text: "Sign Out",
        ),
      ),
    );
  }
}
