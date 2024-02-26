// theme.dart
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get lightTheme {
    // ライトテーマの定義
    return ThemeData(
      primaryColor: const Color(0xFF1DA1F2),
      colorScheme: const ColorScheme.light(
        primary: Color(0xFF1DA1F2),
        onPrimary: Colors.white,
        secondary: Color(0xFF1DA1F2),
        onSecondary: Colors.white,
        surface: Colors.white,
        onSurface: Colors.black,
        background: Color(0xFFE1E8ED),
        onBackground: Colors.black,
        error: Colors.red,
        onError: Colors.white,
      ),
      scaffoldBackgroundColor: const Color(0xFFE1E8ED),
      appBarTheme: const AppBarTheme(
        color: Color(0xFF1DA1F2),
        iconTheme: IconThemeData(color: Colors.white),
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 20.0),
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
      // その他のカスタムテーマ設定をここに追加
    );
  }
}
