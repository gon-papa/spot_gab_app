import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spot_gab_app/repository/secure_token_repository.dart';

part 'user.freezed.dart';

@freezed
class User with _$User {
  const factory User({
    required int id,
    required String uuid,
    required String accountName,
    required String idAccount,
    required String email,
    required String birthDate,
    required String otherUserInvitationCode,
    required bool isEmailVerified,
  }) = _User;
}
