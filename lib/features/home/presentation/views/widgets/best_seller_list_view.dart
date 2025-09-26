import 'package:bookly/features/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:flutter/material.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
      itemCount: 10,
      itemBuilder: (context, index) {
        return BestSellerListViewItem(index: index,);
      },
      separatorBuilder: (context, index) {
        return const SizedBox(height: 20);
      },
    );
  }
}
