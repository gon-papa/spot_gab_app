import 'package:now_go_app/importer.dart';

class MainButton extends ConsumerWidget {
  const MainButton({
    Key? key,
    required this.onPressed,
    required this.width,
    required this.height,
    required this.text,
    this.fontSize = 16.0,
  }) : super(key: key);

  final VoidCallback? onPressed;
  final double width;
  final double height;
  final String text;
  final double fontSize;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        fixedSize: Size(width.w, height.h),
        backgroundColor: Theme.of(context).extension<MyColors>()!.nowGoColor,
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50.0),
        ),
        textStyle: TextStyle(
          fontSize: fontSize.sp,
          fontWeight: FontWeight.bold,
        ),
      ),
      child: Text(text),
    );
  }
}
