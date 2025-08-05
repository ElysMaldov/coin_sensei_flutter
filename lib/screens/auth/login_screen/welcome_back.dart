import 'package:coin_sensei_flutter/components/logos/brand_logo.dart';
import 'package:flutter/material.dart';

class WelcomeBack extends StatelessWidget {
  const WelcomeBack({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 40),
      child: Column(
        spacing: 24,
        children: [
          BrandLogo(),
          Text(
            "Welcome Back!",
            textAlign: TextAlign.center,
            style: Theme.of(
              context,
            ).textTheme.headlineLarge?.copyWith(fontWeight: FontWeight.w800),
          ),
        ],
      ),
    );
  }
}
