import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:spot_gab_app/const/util_const.dart';

showErrorDialog({
  required BuildContext context,
  required String message,
}) {
  return showDialog(
    context: context,
    builder: (BuildContext context) {
      if (message == defaultMsg) {
        message = L10n.of(context)?.errorHasOccurred ?? "エラーが発生しました";
      }
      return AlertDialog(
        backgroundColor: Colors.white,
        title: Text(L10n.of(context)?.error ?? ''),
        content: Text(
          message,
          style: TextStyle(fontSize: 16.sp),
        ),
        actions: [
          TextButton(
            child: Text(
              'OK',
              style: TextStyle(fontSize: 16.sp),
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
