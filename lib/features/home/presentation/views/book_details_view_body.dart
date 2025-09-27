import 'package:bookly/core/utils/size_config.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_feature_list_view_item.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 106.0.w),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: const CustomFeaturedListViewItem()),
          ),
        ],
      ),
    );
  }
}
