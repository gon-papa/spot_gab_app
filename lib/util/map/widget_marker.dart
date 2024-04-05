import 'package:spot_gab_app/importer.dart';

class WidgetMarker {
  WidgetMarker({
    required this.position,
    required this.markerId,
    required this.widget,
    this.onTap,
  }) : assert(markerId.isNotEmpty);

  final LatLng position;
  final String markerId;

  final VoidCallback? onTap;

  final Widget widget;
}
