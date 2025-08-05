import 'package:flutter/material.dart';

class OnboardingSection extends StatelessWidget {
  final String mainImage;
  final String title;
  final String description;
  final String buttonLabel;
  final VoidCallback onButtonPress;
  final VoidCallback? onSkipPress;

  const OnboardingSection({
    super.key,
    required this.mainImage,
    required this.title,
    required this.description,
    required this.onButtonPress,
    this.buttonLabel = "Continue",
    this.onSkipPress,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 48),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: onSkipPress,
                    child: Text(
                      "Skip",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[700],
                      ),
                    ),
                  ),
                ],
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    Image(
                      image: AssetImage(mainImage),
                      width: 350,
                      height: 350,
                    ),

                    Column(
                      spacing: 16,
                      children: [
                        Text(
                          title,
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.headlineSmall
                              ?.copyWith(fontWeight: FontWeight.w800),
                        ),

                        Text(
                          description,
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    // TODO progress indicator
                    Row(
                      children: [
                        Expanded(
                          child: FilledButton(
                            onPressed: onButtonPress,
                            child: Text(buttonLabel),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
