import 'package:now_go_app/importer.dart';
import 'package:cached_network_image/cached_network_image.dart';

class UserIcon extends ConsumerWidget {
  final String? imagePath;
  final double size;
  final Function()? onTap;
  final Color color;
  const UserIcon({
    Key? key,
    required this.imagePath,
    this.size = 50,
    required this.onTap,
    this.color = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
        ),
        child: ClipOval(
          child: imagePath != null && imagePath!.isNotEmpty
              ? CachedNetworkImage(
                  imageUrl: imagePath!,
                  fit: BoxFit.cover,
                  placeholder: (context, url) => CircularProgressIndicator(),
                  errorWidget: (context, url, error) => _DefaultUserImage(
                    size: size,
                    color: color,
                  ),
                )
              : _DefaultUserImage(
                  size: size,
                  color: color,
                ),
        ),
      ),
    );
  }
}

class _DefaultUserImage extends StatelessWidget {
  final double size;
  final Color color;
  _DefaultUserImage({
    Key? key,
    this.size = 50,
    this.color = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Icon(
        Icons.account_circle,
        size: size,
        color: color,
      ),
    );
  }
}
