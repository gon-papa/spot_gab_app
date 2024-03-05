import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:spot_gab_app/page/sign_up/register_provider.dart';
import 'package:spot_gab_app/page/sign_up/widget/register_scaffold.dart';
import 'package:spot_gab_app/page/sign_up/widget/register_title.dart';
import 'package:spot_gab_app/page/util_widget/margin/margin.dart';
import 'package:spot_gab_app/page/util_widget/support_section.dart';
import 'package:spot_gab_app/page/validation/sign_up/sign_up_validation.dart';

typedef _Providers = RegisterProviders;

class RegisterAccount extends ConsumerWidget {
  const RegisterAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return RegisterScaffold(
      title: '2/2 あなたのアカウント情報',
      formKey: ref.watch(_Providers.idAccountGlobalKeyProvider),
      child: _Body(),
      onPressed: () async {
        await ref.watch(_Providers.idAccountSubmitProvider)(
          context,
          ref.read(_Providers.idAccountProvider).text,
        );
      },
    );
  }
}

class _Body extends ConsumerWidget {
  const _Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        VerticalMargin(height: 10),
        RegisterTitle(title: '2/2 あなたのアカウントID'),
        VerticalMargin(height: 15),
        _AccountNameInput(),
        VerticalMargin(height: 15),
        _iDAccountInput(),
        VerticalMargin(height: 45),
        SupportSection(),
      ],
    );
  }
}

class _AccountNameInput extends ConsumerWidget {
  const _AccountNameInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return TextFormField(
      controller: ref.watch(_Providers.accountNameProvider),
      decoration: InputDecoration(
        labelText: 'アカウント名',
      ),
      keyboardType: TextInputType.name,
      validator: ref.watch(signUpValidation).accountNameValidator.call(context),
    );
  }
}

class _iDAccountInput extends ConsumerWidget {
  const _iDAccountInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return TextFormField(
      controller: ref.watch(_Providers.idAccountProvider),
      decoration: InputDecoration(
        labelText: 'アカウントID',
        prefixText: '@',
      ),
      keyboardType: TextInputType.name,
      validator: ref.watch(signUpValidation).accountIdValidator.call(context),
    );
  }
}
