import 'package:bookly/core/constants.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/core/utils/helper.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'best_seller_list_view_item.dart';
import 'custom_feature_books_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final MediaQueryData mediaQuery = MediaQuery.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomFeatureBooksListView(mediaQuery: mediaQuery),
          Text(
            'best seller'.capitalizeEachWord(),
            style: Styles.textStyle18,
          ),
          const SizedBox(height: 16),
          const BestSellerListViewItem(),
        ],
      ),
    );
  }
}
