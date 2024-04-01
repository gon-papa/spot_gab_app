import 'package:spot_gab_app/importer.dart';

class UserIcon extends ConsumerWidget {
  final Image? userImage;
  final double size;
  final Function() onTap;
  const UserIcon({
    Key? key,
    required this.userImage,
    this.size = 50,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return InkWell(
      onTap: () {
        onTap();
      },
      child: Row(
        children: [
          Container(
            width: size,
            height: size,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: ClipOval(
              child: userImage?.image != null
                  ? Image(
                      image: userImage!.image,
                      fit: BoxFit.cover,
                    )
                  : SizedBox(
                      child: Icon(
                        Icons.account_circle,
                        size: size,
                        color: Colors.white,
                      ),
                    ),
            ),
          ),
        ],
      ),
    );
  }
}
