import 'package:bookly/core/constants.dart';
import 'package:bookly/core/utils/size_config.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.backgroundColor = Colors.white,
    this.textColor = primaryColor,
    this.borderRadius,  this.fontSize,
  });
  final String text;
  final VoidCallback onPressed;
  final Color backgroundColor;
  final Color textColor;
  final BorderRadius? borderRadius;
  final double ?fontSize;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        fixedSize: Size(0, 50.h),
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: borderRadius ?? BorderRadius.circular(16),
        ),
      ),
      onPressed: onPressed,
      child: Row(
        spacing: text == '19.99' ? 2 : 0,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: Styles.textStyle20.copyWith(
              color: textColor,
              fontSize: fontSize,
              fontWeight: FontWeight.w900,
            ),
          ),
          Icon(text == '19.99' ? Icons.euro : null, color: textColor),
        ],
      ),
    );
  }
}
