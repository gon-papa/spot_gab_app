import 'package:now_go_app/importer.dart';

typedef _Providers = PasswordResetProviders;

class PasswordReset extends ConsumerWidget {
  const PasswordReset({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return RegisterScaffold(
      child: _Body(),
      title: L10n.of(context)?.passwordResetTitle ?? '',
      formKey: ref.watch(_Providers.globalKeyProvider),
      onPressed: () async {
        ref.read(_Providers.submitProvider)(context: context);
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
        _Description(),
        VerticalMargin(height: 15),
        SupportSection(),
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

class _Description extends StatelessWidget {
  const _Description({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      L10n.of(context)?.passwordResetDescription ?? '',
      style: Theme.of(context).textTheme.titleSmall,
    );
  }
}
