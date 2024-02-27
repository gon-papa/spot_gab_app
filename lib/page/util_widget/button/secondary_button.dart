import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SecondaryButton extends ConsumerWidget {
  const SecondaryButton({
    Key? key,
    required this.onPressed,
    required this.width,
    required this.height,
    required this.text,
  }) : super(key: key);

  final VoidCallback onPressed;
  final double width;
  final double height;
  final String text;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        fixedSize: Size(width.w, height.h),
        backgroundColor: Theme.of(context).colorScheme.background,
        foregroundColor: Theme.of(context).colorScheme.onBackground,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50.0),
        ),
        textStyle: TextStyle(
          fontSize: 14.0.sp,
          fontWeight: FontWeight.bold,
        ),
      ),
      child: Text(
        text,
      ),
    );
  }
}
