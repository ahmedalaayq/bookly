import 'package:bookly/core/constants.dart';
import 'package:bookly/core/utils/helper.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/best_seller_list_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'custom_feature_books_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final MediaQueryData mediaQuery = MediaQuery.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: CustomFeatureBooksListView(
              mediaQuery: mediaQuery,
              onTapFeatureItem: () {
                GoRouter.of(context).push(bookDetailsView);
              },
            ),
          ),
          SliverToBoxAdapter(
            child: Text(
              'best seller'.capitalizeEachWord(),
              style: Styles.textStyle18,
            ),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 16)),
          SliverPadding(
            padding: const EdgeInsets.only(bottom: 32),
            sliver: BestSellerListView(
              onTapItem: () {
                GoRouter.of(context).push(bookDetailsView);
              },
            ),
          ),
        ],
      ),
    );
  }
}
