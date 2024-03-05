import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:spot_gab_app/page/util_widget/button/primary_button.dart';
import 'package:spot_gab_app/repository/secure_token_repository.dart';
import 'package:spot_gab_app/routes/route.dart';

class Home extends ConsumerWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: PrimaryButton(
          onPressed: () async {
            final se = ref.watch(secure_token_provider);
            await se.deleteToken();
            // SignIn画面に遷移
            SignInRoute().go(context);
          },
          width: 300,
          height: 20,
          text: "Sign Out",
        ),
      ),
    );
  }
}
