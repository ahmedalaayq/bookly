import 'package:flutter/material.dart';
import 'custom_feature_list_view.dart';
class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final MediaQueryData mediaQuery = MediaQuery.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 24.0,
        vertical: 16,
      ),
      child: Column(
        children: [
          CustomFeatureListView(mediaQuery: mediaQuery),
        ],
      ),
    );
  }
}

