import 'package:coin_sensei_flutter/components/sections/onboarding/onboarding_section.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int _sectionIndex = 0;

  @override
  Widget build(BuildContext context) {
    final List<Widget> sections = [
      OnboardingSection(
        mainImage: "assets/images/onboarding/onboarding-section-finance.png",
        title: "Take Control of Your Finances",
        description: '''Empower yourself financially with Coin Sensei! 
            
            Our intuitive app makes it easy to track your income, expenses, and budget - all in one place.''',
        onButtonPress: goToNextSection,
        onSkipPress: () => goToLogin(context),
      ),
      OnboardingSection(
        mainImage: "assets/images/onboarding/onboarding-section-budget.png",
        title: "Budgeting Made Simple",
        description:
            "We help you categorize your spending, identify areas to save, and stay on top of your financial goals.",
        onButtonPress: goToNextSection,
        onSkipPress: () => goToLogin(context),
      ),
      OnboardingSection(
        mainImage: "assets/images/onboarding/onboarding-section-connect.png",
        title: "Connect & Automate",
        description:
            '''Save time and gain valuable insights by securely connecting your bank accounts to Coin Sensei.
             
             Enjoy automatic transaction tracking and a holistic view of your finances.''',
        onButtonPress: () => goToLogin(context),
        buttonLabel: "Start tracking your money!",
        onSkipPress: () => goToLogin(context),
      ),
    ];

    final currentSection = sections[_sectionIndex];

    return Scaffold(body: currentSection);
  }

  void goToNextSection() {
    setState(() {
      _sectionIndex++;
    });
  }

  void goToLogin(BuildContext context) {
    context.go("/login");
  }
}
