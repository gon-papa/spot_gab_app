import 'package:spot_gab_app/importer.dart';

typedef _Providers = RegisterProviders;

class RegisterBasicInfo extends ConsumerWidget {
  const RegisterBasicInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return RegisterScaffold(
      child: _Body(),
      title: L10n.of(context)?.registerBasicInfoTitle ?? '',
      formKey: ref.watch(_Providers.basicInfoGlobalKeyProvider),
      onPressed: () async {
        await ref.watch(_Providers.basicInfoSubmitProvider)(
            context, ref.read(_Providers.emailProvider).text);
      },
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        VerticalMargin(height: 10),
        RegisterTitle(
          title: '1/2 ${L10n.of(context)?.registerBasicInfoSubTitle ?? ''}',
        ),
        VerticalMargin(height: 15),
        _EmailInput(),
        VerticalMargin(height: 15),
        _PasswordInput(),
        VerticalMargin(height: 15),
        _BirthdayInput(),
        VerticalMargin(height: 45),
        SupportSection(),
      ],
    );
  }
}

class _EmailInput extends ConsumerWidget {
  const _EmailInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return TextFormField(
      controller: ref.watch(_Providers.emailProvider),
      decoration: InputDecoration(
        labelText: L10n.of(context)?.emailLabel ?? '',
        hintText: L10n.of(context)?.emailInputPlaceholder ?? '',
      ),
      keyboardType: TextInputType.emailAddress,
      validator: ref.watch(signUpValidation).emailValidator.call(context),
    );
  }
}

class _PasswordInput extends ConsumerWidget {
  const _PasswordInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isObscured = ref.watch(_Providers.passwordVisibilityProvider);
    return TextFormField(
      obscureText: !isObscured,
      controller: ref.read(_Providers.passwordProvider),
      decoration: InputDecoration(
          labelText: L10n.of(context)?.passwordLabel ?? '',
          hintText: L10n.of(context)?.passwordInputPlaceholder ?? '',
          suffixIcon: IconButton(
            onPressed: () {
              ref.read(_Providers.passwordVisibilityProvider.notifier).state =
                  !isObscured;
            },
            icon: const Icon(Icons.remove_red_eye),
          )),
      keyboardType: TextInputType.visiblePassword,
      validator: ref.watch(signUpValidation).passwordValidator.call(context),
    );
  }
}

// 生年月日ピッカー
class _BirthdayInput extends ConsumerWidget {
  const _BirthdayInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formatter = DateFormat('yyyy-MM-dd');
    return TextFormField(
        controller: ref.watch(_Providers.birthdayProvider),
        decoration: InputDecoration(
          labelText: L10n.of(context)?.birthdateLabel ?? '',
          hintText: L10n.of(context)?.birthdateInputPlaceholder ?? '',
        ),
        validator: ref.watch(signUpValidation).birthDateValidator(context),
        readOnly: true,
        onTap: () {
          showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(1900),
            lastDate: DateTime.now(),
          ).then(
            (value) {
              if (value != null) {
                ref.read(_Providers.birthdayProvider).text =
                    formatter.format(value);
              }
            },
          );
        });
  }
}
