import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/core/utils/helper.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 4,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(width: 200, height: 50, Assets.logo),

        Text(
          textAlign: TextAlign.center,
          'read free books'.capitalizeEachWord(),
          style: const TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
