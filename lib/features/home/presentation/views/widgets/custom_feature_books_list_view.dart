import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_feature_list_view_item.dart';
import 'package:flutter/material.dart';

class CustomFeatureBooksListView extends StatelessWidget {
  const CustomFeatureBooksListView({
    super.key,
    required this.mediaQuery,
  });
  final MediaQueryData mediaQuery;
  static final List<String> data = [
    Assets.testImage2,

    Assets.testImage2,

    Assets.testImage3,
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: mediaQuery.size.height * 0.45,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(vertical: 24,horizontal: 16),
        separatorBuilder: (context, index) {
          return const SizedBox(width: 16);
        },
        scrollDirection: Axis.horizontal,
        itemCount: data.length,
        itemBuilder: (context, index) {
          return CustomFeaturedListViewItem(
            mediaQuery: mediaQuery,
            image: data[index],
          );
        },
      ),
    );
  }
}
