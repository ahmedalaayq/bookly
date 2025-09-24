import 'dart:developer';
import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'scaling_text.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _scalingAnimation;
  @override
  void initState() {
    super.initState();
    _initScalingAnimation();
  }

  void _initScalingAnimation() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );
    _scalingAnimation = Tween<double>(begin: 0.4, end: 1.2).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeInOut,
      ),
    );
    _animationController.forward();
    _animationController.repeat(reverse: true);
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    log('Build Screen');
    return Column(
      spacing: 16,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(width: 200, height: 50, Assets.logo),
        ScalingSplashText(scalingAnimation: _scalingAnimation),
      ],
    );
  }
}
