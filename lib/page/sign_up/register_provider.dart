import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
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
}

final registerProviders = Provider((ref) => RegisterProviders());
