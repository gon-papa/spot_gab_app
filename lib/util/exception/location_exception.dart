import 'package:now_go_app/importer.dart';

class LocationPermissionException extends BaseException {
  final String message;
  final String code;
  LocationPermissionException({required this.message, required this.code})
      : super(message: message, code: code);
}

class LocationException extends BaseException {
  final String message;
  final String code;
  LocationException({required this.message, required this.code})
      : super(message: message, code: code);
}
