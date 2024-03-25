import 'package:flutter_svg/svg.dart';
import 'package:spot_gab_app/importer.dart';

class ActionIcon extends StatelessWidget {
  final SvgGenImage icon;
  final Function() onTap;
  final double size;
  final String? text;
  final MainAxisAlignment mainAxisAlignment;

  const ActionIcon({
    Key? key,
    required this.icon,
    required this.onTap,
    this.size = 24,
    this.text = null,
    this.mainAxisAlignment = MainAxisAlignment.spaceEvenly,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        InkWell(
          onTap: () {
            onTap();
          },
          child: Row(
            children: [
              icon.svg(
                width: size.w,
                height: size.h,
              ),
              SizedBox(width: 2),
              if (text != null)
                Text(
                  '$text',
                  style: TextStyle(
                    fontSize: 9.sp,
                  ),
                ), // フォントサイズを調整
            ],
          ),
        ),
      ],
    );
  }
}
