import 'package:coin_sensei_flutter/screens/home_screen.dart';
import 'package:coin_sensei_flutter/screens/onboarding/onboarding_budgeting.dart';
import 'package:coin_sensei_flutter/screens/onboarding/onboarding_connect.dart';
import 'package:coin_sensei_flutter/screens/onboarding/onboarding_finance.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  initialLocation: "/",
  routes: [
    GoRoute(path: '/', builder: (context, state) => HomeScreen()),

    GoRoute(
      path: '/onboarding',
      builder: (context, state) {
        return HomeScreen();
      },
      routes: [
        GoRoute(
          path: '1',
          builder: (context, state) {
            return OnboardingFinanceScreen();
          },
        ),
        GoRoute(
          path: '2',
          builder: (context, state) {
            return OnboardingBudgetingScreen();
          },
        ),
        GoRoute(
          path: '3',
          builder: (context, state) {
            return OnboardingConnectScreen();
          },
        ),
      ],
    ),
  ],
);
