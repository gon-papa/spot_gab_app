import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spot_gab_app/gen/assets.gen.dart';

class RegisterTitle extends StatelessWidget {
  final String title;
  const RegisterTitle({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title),
        const Spacer(),
        Assets.images.settingIcon.image(
          width: 30.w,
          height: 30.h,
        ),
      ],
    );
  }
}
