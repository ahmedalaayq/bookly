import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_feature_list_view_item.dart';
import 'package:flutter/material.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({
    super.key,
    required this.onTapSimilarItem,
    required this.mediaQuery,
    this.height,
  });
  final VoidCallback onTapSimilarItem;
  final MediaQueryData mediaQuery;
  static final List<String> data = [
    Assets.testImage2,
    Assets.testImage3,
    Assets.testImage2,
    Assets.testImage3,
    Assets.testImage2,
    Assets.testImage3,
  ];
  final double? height;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: mediaQuery.size.height * 0.15,
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 24),
        separatorBuilder: (context, index) {
          return const SizedBox(width: 16);
        },
        scrollDirection: Axis.horizontal,
        itemCount: data.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: onTapSimilarItem,
            child: CustomFeaturedListViewItem(image: data[index]),
          );
        },
      ),
    );
  }
}
