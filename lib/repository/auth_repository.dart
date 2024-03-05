import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:openapi/openapi.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:spot_gab_app/repository/repository.dart';
import 'package:spot_gab_app/util/error_dialog.dart';
import 'package:spot_gab_app/util/run_api.dart';

class AuthRepository extends BaseRepository {
  AuthRepository() : super();
  final _helper = ProviderContainer().read(runApiProvider);

  Future<Response<SignUpResponse>?>? sign_up(
    BuildContext context,
    SignUpRequest signUpRequest,
  ) async {
    final response = await _helper.run(onSuccess: () async {
      final authApi = getClient().getAuthApi();
      final response = await authApi.signUp(
        signUpRequest: signUpRequest,
        xLanguage: "ja",
        xUserAgent: "spot-gab-app",
      );
      return response;
    }, onError: (error, message) {
      showErrorDialog(context: context, message: message);
    });

    if (response is Response<SignUpResponse>) {
      return response; // 正常系
    }
    return null; // 異常系
  }

  Future<Response<EmailExistsResponse>?>? emailExists(
    BuildContext context,
    String email,
  ) async {
    final response = await _helper.run(onSuccess: () async {
      final authApi = getClient().getAuthApi();
      final response = await authApi.emailExists(
        emailExistsRequest: EmailExistsRequest(((b) => b.email = email)),
        xLanguage: "ja",
        xUserAgent: "spot-gab-app",
      );
      return response;
    }, onError: (error, message) {
      showErrorDialog(context: context, message: message);
    });

    if (response is Response<EmailExistsResponse>) {
      if (response.data?.data?.exists == true) {
        if (context.mounted) {
          showErrorDialog(context: context, message: "このメールアドレスは使用できません");
        }
        return null; // 異常系
      }

      return response; // 正常系
    }
    return null; // 異常系
  }

  Future<Response<IdAccountExistsResponse>?>? idAccountExists(
    BuildContext context,
    String idAccount,
  ) async {
    final response = await _helper.run(onSuccess: () async {
      final authApi = getClient().getAuthApi();
      final response = await authApi.idAccountExists(
        idAccountExistsRequest:
            IdAccountExistsRequest(((b) => b.idAccount = '@$idAccount')),
        xLanguage: "ja",
        xUserAgent: "spot-gab-app",
      );
      return response;
    }, onError: (error, message) {
      showErrorDialog(context: context, message: message);
    });

    if (response is Response<IdAccountExistsResponse>) {
      if (response.data?.data?.exists == true) {
        if (context.mounted) {
          showErrorDialog(context: context, message: "このアカウントIDは使用できません");
        }
        return null; // 異常系
      }

      return response; // 正常系
    }
    return null; // 異常系
  }
}

final authRepositoryProvider = Provider.autoDispose<AuthRepository>(
  (ref) {
    return AuthRepository();
  },
);