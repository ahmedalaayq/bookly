import 'package:bookly/core/utils/helper.dart';
import 'package:flutter/material.dart';

class ScalingSplashText extends StatelessWidget {
  const ScalingSplashText({
    super.key,
    required this.scalingAnimation,
  });
  final Animation<double> scalingAnimation;
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: scalingAnimation,
      builder: (context, _) {
        return FadeTransition(
          opacity: scalingAnimation,
          child: Text(
            textAlign: TextAlign.center,
            'read free books'.capitalizeEachWord(),
            style: const TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
        );
      },
    );
  }
}
