// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'route.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $rootShellRoute,
    ];

RouteBase get $rootShellRoute => ShellRouteData.$route(
      navigatorKey: RootShellRoute.$navigatorKey,
      factory: $RootShellRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: '/',
          factory: $RootRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: '/home',
          factory: $HomeRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: '/sign_in',
          factory: $SignInRouteExtension._fromState,
          routes: [
            GoRouteData.$route(
              path: 'sign_in_form',
              factory: $SignInFormRouteExtension._fromState,
            ),
            GoRouteData.$route(
              path: 'register_basic_info',
              factory: $RegisterBasicInfoRouteExtension._fromState,
            ),
          ],
        ),
      ],
    );

extension $RootShellRouteExtension on RootShellRoute {
  static RootShellRoute _fromState(GoRouterState state) =>
      const RootShellRoute();
}

extension $RootRouteExtension on RootRoute {
  static RootRoute _fromState(GoRouterState state) => const RootRoute();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $HomeRouteExtension on HomeRoute {
  static HomeRoute _fromState(GoRouterState state) => const HomeRoute();

  String get location => GoRouteData.$location(
        '/home',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $SignInRouteExtension on SignInRoute {
  static SignInRoute _fromState(GoRouterState state) => const SignInRoute();

  String get location => GoRouteData.$location(
        '/sign_in',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $SignInFormRouteExtension on SignInFormRoute {
  static SignInFormRoute _fromState(GoRouterState state) =>
      const SignInFormRoute();

  String get location => GoRouteData.$location(
        '/sign_in/sign_in_form',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $RegisterBasicInfoRouteExtension on RegisterBasicInfoRoute {
  static RegisterBasicInfoRoute _fromState(GoRouterState state) =>
      const RegisterBasicInfoRoute();

  String get location => GoRouteData.$location(
        '/sign_in/register_basic_info',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
