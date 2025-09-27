import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomFeaturedListViewItem extends StatelessWidget {
  const CustomFeaturedListViewItem({super.key, this.image});
  final String? image;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(image ?? Assets.testImage3),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
