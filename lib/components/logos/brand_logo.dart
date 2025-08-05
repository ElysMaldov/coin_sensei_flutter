import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BrandLogo extends StatelessWidget {
  const BrandLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      "assets/images/brand-logo.svg",
      semanticsLabel: 'Brand Logo',
    );
  }
}
