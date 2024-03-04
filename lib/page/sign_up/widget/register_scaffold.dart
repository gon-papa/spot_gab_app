import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spot_gab_app/page/util_widget/floating_action_button/floating_action_button.dart';

class RegisterScaffold extends ConsumerWidget {
  const RegisterScaffold({
    Key? key,
    required this.title,
    required this.formKey,
    required this.child,
    required this.onPressed,
  }) : super(key: key);

  final Widget child;
  final String title;
  final GlobalKey<FormState> formKey;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 24.w,
          ),
          child: Form(
            key: formKey,
            child: child,
          ),
        ),
      ),
      floatingActionButton: CoustomFloatingActionButton(
        onPressed: onPressed,
      ),
    );
  }
}
