import 'package:spot_gab_app/importer.dart';

typedef _Providers = SignInProviders;

class SignInForm extends ConsumerWidget {
  const SignInForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return RegisterScaffold(
      child: _Body(),
      title: L10n.of(context)?.signInFormTitle ?? '',
      formKey: ref.watch(_Providers.globalKeyProvider),
      onPressed: () async {
        await ref.watch(_Providers.signInSubmitProvider)(
          context: context,
          email: ref.read(_Providers.emailProvider).text,
          password: ref.read(_Providers.passwordProvider).text,
        );
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
        _LogoImage(),
        _EmailInput(),
        VerticalMargin(height: 15),
        _PasswordInput(),
        VerticalMargin(height: 30),
        SupportSection(),
        VerticalMargin(height: 15),
        _ResetPasswordSupport(),
      ],
    );
  }
}

class _LogoImage extends StatelessWidget {
  const _LogoImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Assets.images.spotGabIconOnly.image(
      width: 60.w,
      height: 60.h,
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

class _ResetPasswordSupport extends ConsumerWidget {
  const _ResetPasswordSupport({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () {
        PasswordResetRoute().go(context);
      },
      child: Text(
        L10n.of(context)?.forgotPasswordMessage ?? '',
        style: TextStyle(color: Colors.blue, fontSize: 12.sp),
      ),
    );
  }
}
