import 'package:now_go_app/importer.dart';

class RegisterComplete extends ConsumerWidget {
  const RegisterComplete({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return _Scaffold(
        child: Column(
      children: [
        const VerticalMargin(height: 60),
        const _LogoImage(),
        const _Title(),
        const VerticalMargin(height: 20),
        const _Description(),
        const VerticalMargin(height: 20),
        const SupportSection(),
        const VerticalMargin(height: 40),
        const RegisterCompleteButton(),
      ],
    ));
  }
}

class _Scaffold extends ConsumerWidget {
  const _Scaffold({required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Center(child: child),
        ),
      ),
    );
  }
}

class _LogoImage extends StatelessWidget {
  const _LogoImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Assets.images.spotGabIcon.image(
      width: 100.w,
      height: 100.h,
    );
  }
}

class _Title extends StatelessWidget {
  const _Title({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      L10n.of(context)?.registerCompleteTitle ?? '',
      style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class _Description extends StatelessWidget {
  const _Description({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      L10n.of(context)?.registerCompleteDescription ?? '',
      style: TextStyle(
        fontSize: 16,
      ),
    );
  }
}

class RegisterCompleteButton extends ConsumerWidget {
  const RegisterCompleteButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return PrimaryButton(
      onPressed: () {
        HomeRoute().go(context);
      },
      text: L10n.of(context)?.letsStartButton ?? '',
      width: 280,
      height: 38,
    );
  }
}
