import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/core/utils/helper.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'custom_feature_books_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final MediaQueryData mediaQuery = MediaQuery.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomFeatureBooksListView(mediaQuery: mediaQuery),
          Text(
            'best seller'.capitalizeEachWord(),
            style: Styles.titleMedium,
          ),
          const SizedBox(height: 16),
          const BestSellerListViewItem(),
        ],
      ),
    );
  }
}

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: Row(
        children: [
        AspectRatio(
      aspectRatio: 2.5 / 4,
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Assets.testImage2),
            fit: BoxFit.fill,
          ),
        ),
      ),
    ),
          const Column(children: [
      
            ],
          ),
        ],
      ),
    );
  }
}
