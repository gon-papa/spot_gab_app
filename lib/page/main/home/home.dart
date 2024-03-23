import 'package:spot_gab_app/importer.dart';

class Home extends ConsumerWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      key: ref.watch(mainScaffoldKeyProvider),
      body: Stack(
        children: [
          GoogleMap(
            initialCameraPosition: const CameraPosition(
              target: LatLng(35.6580339, 139.7016358),
              zoom: 15,
            ),
            myLocationButtonEnabled: false,
          ),
          SafeArea(
            child: Column(
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        ref.read(SignOutProviders.signOutSubmitProvider).call(
                              context: context,
                            );
                      },
                      icon: const Icon(Icons.logout),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
