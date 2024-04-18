import 'package:now_go_app/importer.dart';

class UserNotifier extends StateNotifier<User?> {
  UserNotifier() : super(null);

  // ユーザー情報を設定するメソッド
  User? setUser(User user) {
    state = user;
    return state;
  }

  // AuthenticatedUserをUserに変換
  User convertAuthenticatedUserToUser(AuthenticatedUser user) {
    return User(
      id: user.id,
      file_id: user.imageId?.anyOf.values[0] as int?,
      image: user.file?.anyOf.values[0] as Files?,
      uuid: user.uuid,
      accountName: user.accountName,
      idAccount: user.idAccount,
      email: user.email,
      birthDate: user.birthDate,
      otherUserInvitationCode:
          user.otherUserInvitationCode?.anyOf.values[0].toString(),
      emailVerified: user.emailVerified,
      profile: user.profile?.anyOf.values[0].toString(),
      link: user.link?.anyOf.values[0].toString(),
    );
  }

  // MeをUserに変換
  User convertMeToUser(Me user) {
    return User(
      id: user.id,
      file_id: user.imageId?.anyOf.values[0] as int?,
      image: user.file?.anyOf.values[0] as Files?,
      uuid: user.uuid,
      accountName: user.accountName,
      idAccount: user.idAccount,
      email: user.email,
      birthDate: user.birthDate,
      otherUserInvitationCode:
          user.otherUserInvitationCode?.anyOf.values[0].toString(),
      emailVerified: user.emailVerified,
      profile: user.profile?.anyOf.values[0].toString(),
      link: user.link?.anyOf.values[0].toString(),
    );
  }

  SecureTokenRepository get secure_token_repository => SecureTokenRepository();
  User? get currentState => state;

  Future<bool> isSignIn() async {
    final isToken = await secure_token_repository.getToken();
    return isToken != null;
  }

  Future<User?> me(ref, context) async {
    try {
      final response = await UserRepository().getMe();
      if (response.isSuccess && response.data != null) {
        final user = response.data?.data?.user;
        if (user != null) {
          return setUser(convertMeToUser(user));
        }
        throw Exception('ユーザー情報が取得できませんでした');
      }
    } catch (e) {
      ref.read(errorMessageHandle)(e.toString(), context);
    }
    return null;
  }
}

final userNotifierProvider = StateNotifierProvider<UserNotifier, User?>((ref) {
  return UserNotifier();
});
