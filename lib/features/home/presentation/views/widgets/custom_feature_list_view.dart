import 'package:bookly/features/home/presentation/views/widgets/custom_feature_list_view_item.dart';
import 'package:flutter/material.dart';
class CustomFeatureListView extends StatelessWidget {
  const CustomFeatureListView({super.key, required this.mediaQuery});
  final MediaQueryData mediaQuery;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 5,
      itemBuilder: (context, index) {
        return CustomFeatureListViewItem(mediaQuery: mediaQuery);
      },
    );
  }
}