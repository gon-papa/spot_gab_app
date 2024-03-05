import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:spot_gab_app/repository/secure_token_repository.dart';
import 'user.dart';

class UserNotifier extends StateNotifier<User?> {
  UserNotifier() : super(null);

  // ユーザー情報を設定するメソッド
  User setUser(User user) {
    state = user;
    return state!;
  }

  SecureTokenRepository get secure_token_repository => SecureTokenRepository();

  // ユーザー情報を更新するメソッド
  bool updateUser({
    int? id,
    String? uuid,
    String? accountName,
    String? idAccount,
    String? email,
    String? birthDate,
    String? otherUserInvitationCode,
    bool? isEmailVerified,
  }) {
    if (state != null) {
      state = state?.copyWith(
        id: id ?? state!.id,
        uuid: uuid ?? state!.uuid,
        accountName: accountName ?? state!.accountName,
        idAccount: idAccount ?? state!.idAccount,
        email: email ?? state!.email,
        birthDate: birthDate ?? state!.birthDate,
        otherUserInvitationCode:
            otherUserInvitationCode ?? state!.otherUserInvitationCode,
        isEmailVerified: isEmailVerified ?? state!.isEmailVerified,
      );
      return true;
    }
    return false;
  }

  Future<bool> isSignIn() async {
    final isToken = await secure_token_repository.getToken();
    return isToken != null;
  }
}

final userNotifierProvider = StateNotifierProvider<UserNotifier, User?>((ref) {
  return UserNotifier();
});
