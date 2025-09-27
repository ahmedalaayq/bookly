import 'package:flutter/material.dart';

class SizeConfig {
  static late double screenWidth;
  static late double screenHeight;
  static late double designWidth;
  static late double designHeight;
  static late TextScaler textScaleFactor;

  static void init(
    BuildContext context, {
    double dWidth = 500,
    double dHeight = 700,
  }) {
    final mq = MediaQuery.of(context);
    screenWidth = mq.size.width;
    screenHeight = mq.size.height;
    designWidth = dWidth;
    designHeight = dHeight;
    textScaleFactor = mq.textScaler;
  }
}

extension SizeExtension on num {
  double get w =>
      (this / SizeConfig.designWidth) * SizeConfig.screenWidth;

  double get h =>
      (this / SizeConfig.designHeight) * SizeConfig.screenHeight;

  double get sp {
    double wRatio = SizeConfig.screenWidth / SizeConfig.designWidth;
    double hRatio = SizeConfig.screenHeight / SizeConfig.designHeight;

    double scale = (wRatio + hRatio) / 2;

    double finalFontSize = this * scale;

    final double min = this * 0.85;
    final double max = this * 1.4;
    finalFontSize = finalFontSize.clamp(min, max);

    return SizeConfig.textScaleFactor.scale(finalFontSize);
  }
}
