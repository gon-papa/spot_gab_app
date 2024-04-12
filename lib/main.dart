import 'package:now_go_app/importer.dart';

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
  // ignore: unused_field
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
        title: 'NowGo',
        localizationsDelegates: L10n.localizationsDelegates,
        supportedLocales: L10n.supportedLocales,
        locale: const Locale('ja', 'JP'),
        routerConfig: router,
        builder: (BuildContext innerContext, Widget? child) {
          return ErrorListenerWidget(child: child!);
        },
      ),
    );
  }
}

// TODO: ボタンが押されたら更新として、ここはshared_preferencesを使う
final languageProvider = StateProvider<String>((ref) => 'ja');
