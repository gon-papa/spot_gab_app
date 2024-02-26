import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:spot_gab_app/page/home/home.dart';

part 'route.g.dart';

// プロバイダーの定義
final routerProvider = Provider((ref) {
  return GoRouter(
    routes: $appRoutes,
    // redirect: (BuildContext context, GoRouterState state) async {
    //   if (state.uri.path == const HomeRoute().location) {
    //     if (await ref.read(authRepositoryProvider).checkSignIn()) {
    //       return const HomeRoute().location;
    //     } else {
    //       return const TopRoute().location;
    //     }
    //   }
    // },
  );
});

@TypedGoRoute<HomeRoute>(
  path: '/',
  routes: [],
)
class HomeRoute extends GoRouteData {
  const HomeRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const Home();
  }
}
