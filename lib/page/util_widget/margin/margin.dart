import 'package:spot_gab_app/importer.dart';

class VerticalMargin extends StatelessWidget {
  const VerticalMargin({required this.height});
  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height.h,
    );
  }
}

class HorizontalMargin extends StatelessWidget {
  const HorizontalMargin({required this.width});
  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width.h,
    );
  }
}
