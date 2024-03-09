import 'package:spot_gab_app/importer.dart';

class SignIn extends ConsumerWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const _Scafold(
      child: Column(
        children: [
          _Margin(height: 120),
          _LogoImage(),
          _SubTitle(),
          _Margin(height: 80),
          _SignInButton(),
          _Margin(height: 22),
          _SignUpButton(),
        ],
      ),
    );
  }
}

class _Scafold extends ConsumerWidget {
  const _Scafold({required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Center(child: child),
    );
  }
}

class _Margin extends ConsumerWidget {
  const _Margin({required this.height});
  final double height;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      height: height.h,
    );
  }
}

class _LogoImage extends StatelessWidget {
  const _LogoImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Assets.images.spotGabIcon.image(
      width: 150.w,
      height: 150.h,
    );
  }
}

class _SubTitle extends StatelessWidget {
  const _SubTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      L10n.of(context)?.shareMomentTitle ?? '',
      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            fontWeight: FontWeight.bold,
          ),
    );
  }
}

class _SignInButton extends ConsumerWidget {
  const _SignInButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return PrimaryButton(
      onPressed: () {
        const RegisterBasicInfoRoute().go(context);
      },
      width: 280,
      height: 38,
      text: L10n.of(context)?.createAccount ?? '',
    );
  }
}

class _SignUpButton extends ConsumerWidget {
  const _SignUpButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SecondaryButton(
      onPressed: () {
        const SignInFormRoute().go(context);
      },
      width: 280,
      height: 38,
      text: L10n.of(context)?.signInButton ?? '',
    );
  }
}
