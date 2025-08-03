import "package:coin_sensei_flutter/screens/home_screen.dart";
import "package:coin_sensei_flutter/screens/onboarding/onboarding.dart";
import "package:flutter/material.dart";
import "package:go_router/go_router.dart";

final router = GoRouter(
  redirect: (BuildContext context, GoRouterState state) {
    // TODO add auth guard
    return "/onboarding";
  },
  routes: [
    GoRoute(path: "/", builder: (context, state) => HomeScreen()),

    GoRoute(
      path: "/onboarding",
      builder: (context, state) {
        return OnboardingScreen();
      },
    ),
  ],
);
