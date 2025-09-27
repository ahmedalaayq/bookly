import 'package:bookly/core/utils/size_config.dart';
import 'package:flutter/material.dart';

import 'books_action.dart';
import 'custom_feature_list_view_item.dart';
import 'similar_books_section.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 106.0.w),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: const CustomFeaturedListViewItem(),
          ),
        ),
        SizedBox(height: 43.h),
        const SimilarBooksSection(),
        const SizedBox(height: 37),

        const BooksAction(),
      ],
    );
  }
}


