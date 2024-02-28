import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:spot_gab_app/gen/assets.gen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:spot_gab_app/page/sign_up/register_provider.dart';

class RegisterBasicInfo extends ConsumerWidget {
  const RegisterBasicInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const _Scaffold(
      child: Column(
        children: [
          _Margin(height: 10),
          _Title(),
          _Margin(height: 15),
          _EmailInput(),
          _Margin(height: 15),
          _PasswordInput(),
          _Margin(height: 15),
          _BirthdayInput(),
          _Margin(height: 45),
          _HelpSection(),
        ],
      ),
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

class _Scaffold extends ConsumerWidget {
  const _Scaffold({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text(L10n.of(context)?.enterBasicInfoTitle ?? ''),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Form(
            key: ref.read(_Providers.keyProvider),
            child: child,
          ),
        ),
      ),
      floatingActionButton: SizedBox(
        width: 50.w,
        height: 50.h,
        child: FloatingActionButton(
          onPressed: () {},
          shape: const CircleBorder(),
          backgroundColor: Theme.of(context).colorScheme.primary,
          child: const Icon(
            Icons.navigate_next,
            size: 40,
          ),
        ),
      ),
    );
  }
}

class _Title extends StatelessWidget {
  const _Title({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('1/3 ${L10n.of(context)?.accountInfoSubtitle ?? ""}'),
        const Spacer(),
        Assets.images.settingIcon.image(
          width: 30.w,
          height: 30.h,
        ),
      ],
    );
  }
}

class _EmailInput extends ConsumerWidget {
  const _EmailInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return TextFormField(
      controller: ref.read(_Providers.emailProvider),
      decoration: InputDecoration(
        labelText: L10n.of(context)?.emailLabel ?? '',
      ),
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
          labelText: 'パスワード',
          suffixIcon: IconButton(
            onPressed: () {
              ref.read(_Providers.passwordVisibilityProvider.notifier).state =
                  !isObscured;
            },
            icon: const Icon(Icons.remove_red_eye),
          )),
      keyboardType: TextInputType.visiblePassword,
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
        decoration: const InputDecoration(
          labelText: '生年月日',
        ),
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

class _HelpSection extends StatelessWidget {
  const _HelpSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TapGestureRecognizer tapGestureRecognizer = TapGestureRecognizer()
      ..onTap = () {
        showDialog(
          context: context,
          builder: (context) {
            // TODO: サポートに連絡する方法を表示する
            return const AlertDialog(
              content: Text("サポートに連絡する方法"),
            );
          },
        );
      };

    return Container(
      alignment: Alignment.centerLeft,
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 12.0),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.background,
              borderRadius: BorderRadius.circular(4.0),
            ),
            child: Center(
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "何か問題が発生しましたか？",
                      style: TextStyle(
                        fontSize: 14,
                        color: Theme.of(context).colorScheme.onBackground,
                      ),
                    ),
                    TextSpan(
                      text: " サポートに連絡",
                      style: TextStyle(
                        fontSize: 14,
                        color: Theme.of(context).primaryColor,
                        decoration: TextDecoration.underline,
                      ),
                      recognizer: tapGestureRecognizer,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

typedef _Providers = RegisterProviders;
