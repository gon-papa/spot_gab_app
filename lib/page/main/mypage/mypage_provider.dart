import 'package:now_go_app/importer.dart';

class MyPageProviders {
  static final showUserImage = Provider(
    (ref) => (BuildContext context, Offset tapPosition, User? user) {
      // ダイアログを表示してユーザーの画像を表示する
      double screenWidth = MediaQuery.of(context).size.width;
      double screenHeight = MediaQuery.of(context).size.height;
      showGeneralDialog(
        context: context,
        barrierDismissible: true,
        barrierLabel: 'Dismiss',
        transitionBuilder: (context, animation, secondaryAnimation, child) {
          var begin = 0.0;
          var end = 1.0;
          var curve = Curves.easeOut;
          var tween =
              Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

          var offsetAnimation = animation.drive(tween);

          // タップされた位置を画面のサイズに基づいて正規化
          final normalizedX = (tapPosition.dx / screenWidth) * 2 - 1;
          final normalizedY = (tapPosition.dy / screenHeight) * 2 - 1;

          return ScaleTransition(
            scale: offsetAnimation,
            child: child,
            // タップされた位置を基準にズーム
            alignment: Alignment(
              normalizedX,
              normalizedY,
            ),
          );
        },
        transitionDuration: Duration(milliseconds: 300),
        pageBuilder: (context, animation, secondaryAnimation) {
          return AlertDialog(
            contentPadding: EdgeInsets.all(0),
            backgroundColor: Colors.black,
            content: Container(
              width: screenWidth,
              height: 280.h,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  UserIcon(
                    imagePath: user?.image?.path,
                    onTap: null,
                    size: 250,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  '閉じる',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13.sp,
                  ),
                ),
              ),
            ],
          );
        },
      );
    },
  );
}

final myPageProvider = Provider<MyPageProviders>((ref) => MyPageProviders());
