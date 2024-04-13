import 'package:now_go_app/importer.dart';

class SignIn extends ConsumerWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const _Scafold(
      child: Column(
        children: [
          _Margin(height: 120),
          _LogoImage(),
          _Margin(height: 10),
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
    return Assets.images.nowGoSquareLogo.svg(
      width: 100.w,
      height: 100.h,
    );
  }
}

class _SubTitle extends StatelessWidget {
  const _SubTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'なうGO',
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: 13.sp,
              ),
        ),
        Text(
          'NowGO',
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: 40.sp,
                height: 0.6.h,
              ),
        ),
        Text(
          L10n.of(context)?.shareMomentTitle ?? '',
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: 13.sp,
              ),
        ),
      ],
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
