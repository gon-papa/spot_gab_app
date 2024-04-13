import 'package:now_go_app/importer.dart';

class UserMarker extends StatelessWidget {
  final String? imagePath;
  final Function onTap;
  final Color color;

  UserMarker({
    required this.imagePath,
    required this.onTap,
    this.color = Colors.blue,
  });

  Widget _userImageWidget(String? imagePath) {
    return UserIcon(
      imagePath: imagePath,
      onTap: () => {},
      size: 140,
    );
  }

  Widget _markerIcon(Color color) {
    return Assets.icons.userMarker.svg(
      width: 250,
      height: 250,
      colorFilter: ColorFilter.mode(
        color,
        BlendMode.srcIn,
      ),
    );
  }

  Widget _combinedWidget(
    String? iamgePath,
    Color color,
  ) {
    return SizedBox(
      width: 300,
      height: 300,
      child: Stack(
        children: [
          Positioned(
            top: 80,
            left: 70,
            child: _markerIcon(color),
          ),
          Positioned(
            top: 90,
            left: 85,
            child: _userImageWidget(imagePath),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _combinedWidget(imagePath, color);
  }
}
