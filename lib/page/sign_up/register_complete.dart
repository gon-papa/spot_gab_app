import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:spot_gab_app/page/util_widget/button/primary_button.dart';
import 'package:spot_gab_app/page/util_widget/margin/margin.dart';
import 'package:spot_gab_app/page/util_widget/support_section.dart';

class RegisterComplete extends ConsumerWidget {
  const RegisterComplete({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return _Scaffold(
        child: Column(
      children: [
        const VerticalMargin(height: 100),
        const _Title(),
        const VerticalMargin(height: 40),
        const _Description(),
        const VerticalMargin(height: 20),
        const SupportSection(),
        const VerticalMargin(height: 60),
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
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Center(child: child),
      ),
    );
  }
}

class _Title extends StatelessWidget {
  const _Title({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      '登録が完了しました',
      style: TextStyle(
        fontSize: 24,
      ),
    );
  }
}

class _Description extends StatelessWidget {
  const _Description({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      '''
ご登録ありがとうございます。
ご登録したメールアドレスにメールを送信しました。\n
メール内のリンクをクリックして登録を完了してください。
※有効期限が切れてしまった場合は、\n[マイページ>アカウント情報]より再送信を行えます。
      ''',
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
      onPressed: () {},
      text: 'さあ、はじめましょう',
      width: 280,
      height: 38,
    );
  }
}
