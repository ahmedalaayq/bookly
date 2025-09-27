import 'package:bookly/core/constants.dart';
import 'package:bookly/core/utils/helper.dart';
import 'package:bookly/core/utils/size_config.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_feature_list_view_item.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

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
        Text(
          'the rich dad books'.capitalizeEachWord(),
          style: Styles.textStyle30.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 6.h),
        Text(
          'Rich Dad'.capitalizeEachWord(),
          style: Styles.textStyle18.copyWith(
            color: Colors.white.withValues(alpha: 0.7),
            fontWeight: FontWeight.w600,
            fontStyle: FontStyle.italic,
          ),
        ),
      ],
    );
  }
}
