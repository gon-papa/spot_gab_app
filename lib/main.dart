import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spot_gab_app/routes/route.dart';
import 'package:spot_gab_app/themes/theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

Future<void> main() async {
  MyApp.run();
}

class MyApp extends ConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  static Future<void> run() async {
    WidgetsFlutterBinding.ensureInitialized();
    runApp(const ProviderScope(child: MyApp()));
  }

  // iOSのアニメーションをAndroidでも使えるようにする
  static const Map<TargetPlatform, PageTransitionsBuilder> _defaultBuilders =
      <TargetPlatform, PageTransitionsBuilder>{
    TargetPlatform.android: CupertinoPageTransitionsBuilder(),
    TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
  };

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);
    return ScreenUtilInit(
      designSize: const Size(320, 568),
      builder: (BuildContext context, Widget? child) => MaterialApp.router(
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        themeMode: ThemeMode.system, // 一旦システム設定に従う
        title: 'SpotGab',
        localizationsDelegates: L10n.localizationsDelegates,
        supportedLocales: L10n.supportedLocales,
        locale: const Locale('ja', 'JP'),
        routerConfig: router,
      ),
    );
  }
}
