import "package:coin_sensei_flutter/screens/auth/login_screen/login_screen.dart";
import "package:coin_sensei_flutter/screens/home_screen.dart";
import "package:coin_sensei_flutter/screens/onboarding/onboarding_screen.dart";
import "package:go_router/go_router.dart";

final router = GoRouter(
  initialLocation: "/onboarding",
  // TODO switch to /
  // initialLocation: "/",
  // redirect: (BuildContext context, GoRouterState state) {
  //   // TODO add auth guard
  //   return "/onboarding";
  // },
  routes: [
    GoRoute(path: "/", builder: (context, state) => HomeScreen()),

    GoRoute(
      path: "/onboarding",
      builder: (context, state) {
        return OnboardingScreen();
      },
    ),

    GoRoute(
      path: "/login",
      builder: (context, state) {
        return LoginScreen();
      },
    ),
  ],
);
