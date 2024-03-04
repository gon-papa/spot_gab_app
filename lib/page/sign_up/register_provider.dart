import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:spot_gab_app/gen/openapi/lib/openapi.dart';
import 'package:spot_gab_app/repository/auth_repository.dart';
import 'package:spot_gab_app/routes/route.dart';

class RegisterProviders {
  static final basicInfoGlobalKeyProvider = Provider(
    (_) => GlobalKey<FormState>(),
  );
  static final idAccountGlobalKeyProvider = Provider(
    (_) => GlobalKey<FormState>(),
  );

  static final emailProvider = ChangeNotifierProvider(
    (ref) => TextEditingController(),
  );

  static final passwordProvider = ChangeNotifierProvider(
    (ref) => TextEditingController(),
  );

  static final birthdayProvider = ChangeNotifierProvider(
    (ref) => TextEditingController(),
  );

  static final idAccountProvider = ChangeNotifierProvider(
    (ref) => TextEditingController(),
  );

  static final passwordVisibilityProvider = StateProvider((ref) => false);

  static final basicInfoSubmitProvider = Provider(
    (ref) => (BuildContext context, String email) async {
      final formState = ref.watch(basicInfoGlobalKeyProvider).currentState;
      if (formState != null && formState.validate()) {
        final authRepository = ref.read(authRepositoryProvider);
        final emailExistsResponse =
            await authRepository.emailExists(context, email);
        if (emailExistsResponse != null) {
          RegisterIdAccountRoute().push(context);
        }
        return true;
      }
      return false;
    },
  );

  static final idAccountSubmitProvider = Provider(
    (ref) => (BuildContext context, String idAccount) async {
      final formState = ref.watch(idAccountGlobalKeyProvider).currentState;
      if (formState != null && formState.validate()) {
        final authRepository = ref.read(authRepositoryProvider);
        final idAccountExistsResponse =
            await authRepository.idAccountExists(context, idAccount);

        if (idAccountExistsResponse != null) {
          final format = DateFormat('yyyy-MM-dd');
          final birthDate = format.parseStrict(ref.read(birthdayProvider).text);
          final registerResponse = await authRepository.sign_up(
            context,
            SignUpRequest(
              ((b) => b
                ..email = ref.read(emailProvider).text
                ..password = ref.read(passwordProvider).text
                ..birthDate = birthDate.toDate()
                ..accountName = ref.read(idAccountProvider).text
                ..idAccount = '@${ref.read(idAccountProvider).text}'),
            ),
          );
          if (registerResponse != null) {
            RegisterCompleteRoute().push(context);
          }
          return true;
        }
      }
      return false;
    },
  );
}

final registerProviders = Provider((ref) => RegisterProviders());
