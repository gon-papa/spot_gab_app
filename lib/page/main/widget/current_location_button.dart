import 'package:now_go_app/importer.dart';

class CurrentLocationButton extends ConsumerWidget {
  final GoogleMapController? controller;
  final Function? onPressed;

  const CurrentLocationButton(
      {required this.controller, this.onPressed = null});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final myLatLng = ref.watch(MapProviders.myLatLngProvider);
    return FloatingActionButton(
      onPressed: () {
        if (controller != null) {
          controller!.animateCamera(
            CameraUpdate.newLatLng(
              LatLng(myLatLng.latitude, myLatLng.longitude),
            ),
          );
          // TODO: サインアウトを後で消す
          ref.read(SignOutProviders.signOutSubmitProvider)(context: context);
          if (onPressed != null) {
            onPressed!();
          }
        } else {
          ref.read(errorMessageHandle)("現在地情報が取得できませんでした", context);
        }
      },
      child: Icon(Icons.my_location),
      backgroundColor: Theme.of(context).colorScheme.background,
      foregroundColor: Theme.of(context).colorScheme.onBackground,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
        side: BorderSide(
          color: Theme.of(context).colorScheme.onBackground,
          width: 0.1,
        ),
      ),
    );
  }
}
