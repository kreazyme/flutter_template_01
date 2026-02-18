import 'dart:developer';

import 'package:example_template/pages/home/home_page.dart';
import 'package:example_template/pages/onboarding/onboarding_page.dart';
import 'package:example_template/pages/splash/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppRoutePaths {
  const AppRoutePaths._();

  static const splash = '/';
  static const onboarding = '/onboarding';
  static const home = '/home';
}

final GoRouter appRouter = GoRouter(
  initialLocation: AppRoutePaths.splash,
  observers: [AppNavigatorObserver()],
  routes: [
    GoRoute(
      path: AppRoutePaths.splash,
      builder: (context, state) => const SplashPage(),
    ),
    GoRoute(
      path: AppRoutePaths.onboarding,
      builder: (context, state) => const OnboardingPage(),
    ),
    GoRoute(
      path: AppRoutePaths.home,
      builder: (context, state) => const HomePage(),
    ),
  ],
);

class AppNavigatorObserver extends NavigatorObserver {
  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    super.didPush(route, previousRoute);
    log('Navigated to ${route.settings.name ?? route.settings.arguments}');
  }
}
