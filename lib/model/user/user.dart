import 'package:now_go_app/importer.dart';

part 'user.freezed.dart';

@freezed
class User with _$User {
  const factory User({
    required int id,
    @Default(null) int? file_id,
    @Default(null) Files? image,
    required String uuid,
    required String accountName,
    required String idAccount,
    required String email,
    required Date birthDate,
    @Default(null) String? otherUserInvitationCode,
    required bool emailVerified,
    @Default(null) String? profile,
    @Default(null) String? link,
  }) = _User;
}
