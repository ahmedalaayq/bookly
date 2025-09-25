import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomFeatureListViewItem extends StatelessWidget {
  const CustomFeatureListViewItem({
    super.key,
    required this.mediaQuery,
  });
  final MediaQueryData mediaQuery;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Assets.testImage),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
