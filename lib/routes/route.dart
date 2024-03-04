import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:spot_gab_app/page/main/home/home.dart';
import 'package:spot_gab_app/page/sign_in/sign_in.dart';
import 'package:spot_gab_app/page/sign_in/sign_in_form.dart';
import 'package:spot_gab_app/page/sign_up/register_basic_info.dart';
import 'package:spot_gab_app/page/sign_up/register_id_account.dart';

part 'route.g.dart';

// プロバイダーの定義
final routerProvider = Provider(
  (ref) {
    return GoRouter(
      initialLocation: const RootRoute().location,
      routes: [...$appRoutes],
      redirect: (BuildContext context, GoRouterState state) async {
        if (state.uri.path == const RootRoute().location) {
          // TODO: ログイン状態をチェックする
          return const SignInRoute().location;
        }
      },
    );
  },
);

@TypedShellRoute<RootShellRoute>(
  routes: [
    TypedGoRoute<RootRoute>(path: '/'),
    TypedGoRoute<HomeRoute>(path: '/home'),
    TypedGoRoute<SignInRoute>(
      path: '/sign_in',
      routes: [
        TypedGoRoute<SignInFormRoute>(
          path: 'sign_in_form',
        ),
        TypedGoRoute<RegisterBasicInfoRoute>(
          path: 'register_basic_info',
        ),
        TypedGoRoute<RegisterIdAccountRoute>(
          path: 'register_id_account',
        ),
      ],
    ),
  ],
)
class RootShellRoute extends ShellRouteData {
  const RootShellRoute();

  static final $navigatorKey = rootNavigatorKey;

  @override
  Widget builder(BuildContext context, GoRouterState state, Widget navigator) {
    return navigator;
  }
}

// ダミーのルート
class RootRoute extends GoRouteData {
  const RootRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const SizedBox();
}

class HomeRoute extends GoRouteData {
  const HomeRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const Home();
  }
}

class SignInRoute extends GoRouteData {
  const SignInRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const SignIn();
  }
}

class SignInFormRoute extends GoRouteData {
  const SignInFormRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const SignInForm();
  }
}

class RegisterBasicInfoRoute extends GoRouteData {
  const RegisterBasicInfoRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const RegisterBasicInfo();
  }
}

class RegisterIdAccountRoute extends GoRouteData {
  const RegisterIdAccountRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const RegisterIdAccount();
  }
}

final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> shellNavigatorKey = GlobalKey<NavigatorState>();
