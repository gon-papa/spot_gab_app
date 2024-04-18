import 'package:now_go_app/importer.dart';
import 'package:now_go_app/page/sign_in/password_reset_send_email.dart';

part 'route.g.dart';

// プロバイダーの定義
final routerProvider = Provider(
  (ref) {
    return GoRouter(
      initialLocation: const RootRoute().location,
      routes: [...$appRoutes],
      navigatorKey: ref.read(globalKeyProvider),
      redirect: (BuildContext context, GoRouterState state) async {
        if (state.uri.path == const RootRoute().location) {
          final isSignIn =
              await ref.read(userNotifierProvider.notifier).isSignIn();
          if (isSignIn) {
            await ref.read(userNotifierProvider.notifier).me(ref, context);
            return const HomeRoute().location;
          }
          return const SignInRoute().location;
        }
        return null;
      },
    );
  },
);

final globalKeyProvider = Provider((_) => GlobalKey<NavigatorState>());

@TypedShellRoute<RootShellRoute>(
  routes: [
    TypedGoRoute<RootRoute>(path: '/'),
    TypedGoRoute<WebViewRoute>(path: '/web_view'),
    TypedShellRoute<MainRouteData>(
      routes: [
        TypedGoRoute<HomeRoute>(path: '/home'),
        TypedGoRoute<MyPageRoute>(
          path: '/my_page',
        ),
      ],
    ),
    TypedGoRoute<MyPageEditRoute>(path: '/my_page/edit'),
    TypedGoRoute<PostRoute>(path: '/post'),
    TypedGoRoute<SignInRoute>(
      path: '/sign_in',
      routes: [
        TypedGoRoute<SignInFormRoute>(
          path: 'sign_in_form',
          routes: [
            TypedGoRoute<PasswordResetRoute>(path: 'password_reset', routes: [
              TypedGoRoute<PasswordResetSendEmailRoute>(
                path: 'password_reset_send_email',
              ),
            ]),
          ],
        ),
        TypedGoRoute<RegisterBasicInfoRoute>(
          path: 'register_basic_info',
        ),
        TypedGoRoute<RegisterIdAccountRoute>(
          path: 'register_id_account',
        ),
        TypedGoRoute<RegisterCompleteRoute>(
          path: 'register_complete',
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

class WebViewRoute extends GoRouteData {
  final String url;
  const WebViewRoute({required this.url});

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return WebViewPage(url: url);
  }
}

class MainRouteData extends ShellRouteData {
  const MainRouteData();

  static final $navigatorKey = shellNavigatorKey;

  @override
  Widget builder(BuildContext context, GoRouterState state, Widget navigator) {
    return MainScaffold(
      body: navigator,
      fullPath: state.fullPath,
    );
  }
}

class HomeRoute extends GoRouteData {
  const HomeRoute();

  static final $parentNavigatorKey = shellNavigatorKey;

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) =>
      noAnimationPage(Home());
}

class MyPageRoute extends GoRouteData {
  MyPageRoute();

  static final $parentNavigatorKey = shellNavigatorKey;

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) =>
      noAnimationPage(MyPage());
}

class MyPageEditRoute extends GoRouteData {
  const MyPageEditRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const MyPageEdit();
  }
}

class PostRoute extends GoRouteData {
  const PostRoute();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) =>
      bottomSlideUpPage(Post());
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

class PasswordResetRoute extends GoRouteData {
  const PasswordResetRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const PasswordReset();
  }
}

class PasswordResetSendEmailRoute extends GoRouteData {
  const PasswordResetSendEmailRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const PasswordResetSendEmail();
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
    return const RegisterAccount();
  }
}

class RegisterCompleteRoute extends GoRouteData {
  const RegisterCompleteRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const RegisterComplete();
  }
}

CustomTransitionPage<void> noAnimationPage(Widget page) {
  return CustomTransitionPage<void>(
    child: page,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return FadeTransition(
        opacity: animation,
        child: SlideTransition(
          position: animation.drive(
            Tween<Offset>(
              begin: const Offset(1, 0),
              end: Offset.zero,
            ).chain(
              CurveTween(curve: Curves.easeIn),
            ),
          ),
          child: child,
        ),
      );
    },
  );
}

CustomTransitionPage<void> bottomSlideUpPage(Widget page) {
  return CustomTransitionPage<void>(
    child: page,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return FadeTransition(
        opacity: animation,
        child: SlideTransition(
          position: animation.drive(
            Tween<Offset>(
              begin: const Offset(0, 1), // 下からスライドする設定
              end: Offset.zero,
            ).chain(
              CurveTween(curve: Curves.easeInOut),
            ),
          ),
          child: child,
        ),
      );
    },
    transitionDuration: const Duration(milliseconds: 500),
  );
}

final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> shellNavigatorKey = GlobalKey<NavigatorState>();
