import 'package:now_go_app/importer.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      primaryColor: const Color(0xFF1DA1F2),
      colorScheme: const ColorScheme.light(
        primary: Color(0xFF1DA1F2),
        onPrimary: Colors.white,
        secondary: Color(0xFF1DA1F2),
        onSecondary: Colors.white,
        surface: Colors.white,
        onSurface: Colors.black,
        background: Color(0xFFF4F4F4),
        onBackground: Color(0xFF3C4043),
        error: Colors.red,
        onError: Colors.white,
      ),
      scaffoldBackgroundColor: Colors.white,
      // カスタムカラーを追加
      extensions: <ThemeExtension<dynamic>>[
        MyColors(
          nowGoColor: const Color(0xFF5151C6),
        ),
      ],
      appBarTheme: const AppBarTheme(
        // color: Colors.white,
        foregroundColor: Colors.white,
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        shadowColor: Colors.transparent,
        iconTheme: IconThemeData(color: Color(0xFF3C4043)),
        titleTextStyle: TextStyle(
          color: Color(0xFF3C4043),
          fontSize: 20.0,
        ),
        centerTitle: false,
        titleSpacing: 0.0,
      ),
      textTheme: TextTheme(
        displayLarge: TextStyle(
          fontSize: 32.0.sp,
          fontWeight: FontWeight.bold,
          color: const Color(0xFF3C4043),
        ),
        titleLarge: TextStyle(
          fontSize: 24.0.sp,
          fontWeight: FontWeight.bold,
          color: const Color(0xFF3C4043),
        ),
        bodyMedium: TextStyle(
          fontSize: 16.0.sp,
          color: const Color(0xFF3C4043),
        ),
      ),
      // その他のカスタムテーマ設定をここに追加
    );
  }

  static ThemeData get darkTheme {
    // ダークテーマの定義
    return ThemeData(
      primaryColor: const Color(0xFF1DA1F2),
      colorScheme: const ColorScheme.dark(
        primary: Color(0xFF1DA1F2),
        onPrimary: Colors.white,
        secondary: Color(0xFF1DA1F2),
        onSecondary: Colors.white,
        surface: Color(0xFF121212),
        onSurface: Colors.white,
        background: Color(0xFF10171E),
        onBackground: Colors.white,
        error: Colors.red,
        onError: Colors.white,
      ),
      scaffoldBackgroundColor: const Color(0xFF10171E),
      appBarTheme: const AppBarTheme(
        color: Color(0xFF1DA1F2),
        iconTheme: IconThemeData(color: Colors.white),
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 20.0),
      ),
      textTheme: TextTheme(
        displayLarge: TextStyle(
          fontSize: 32.0.sp,
          fontWeight: FontWeight.bold,
          color: const Color(0xFF3C4043),
        ),
        titleLarge: TextStyle(
          fontSize: 24.0.sp,
          fontWeight: FontWeight.bold,
          color: const Color(0xFF3C4043),
        ),
        bodyMedium: TextStyle(
          fontSize: 16.0.sp,
          color: const Color(0xFF3C4043),
        ),
      ),
    );
  }
}

class MyColors extends ThemeExtension<MyColors> {
  final Color nowGoColor;

  const MyColors({required this.nowGoColor});

  @override
  MyColors copyWith({Color? accentColor}) {
    return MyColors(nowGoColor: accentColor ?? this.nowGoColor);
  }

  @override
  MyColors lerp(ThemeExtension<MyColors>? other, double t) {
    if (other is MyColors) {
      return MyColors(
        nowGoColor: Color.lerp(nowGoColor, other.nowGoColor, t)!,
      );
    }
    return this;
  }
}
