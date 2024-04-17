import 'package:flutter/material.dart';
import 'package:now_go_app/importer.dart';
import 'package:now_go_app/page/util_widget/button/primary_button.dart';

class HasErrorView extends StatelessWidget {
  const HasErrorView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('エラーが発生しました。'),
            VerticalMargin(height: 10.h),
            PrimaryButton(
              text: 'ホームへ移動',
              onPressed: () {
                HomeRoute().go(context);
              },
              width: 100.w,
              height: 20.h,
            ),
          ],
        ),
      ),
    );
  }
}
