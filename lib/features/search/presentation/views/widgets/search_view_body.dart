import 'package:bookly/core/constants.dart';
import 'package:bookly/core/utils/size_config.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_feature_books_list_view.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

import 'custom_search_text_form_field.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final MediaQueryData mediaQuery = MediaQuery.of(context);
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16.0,
          vertical: 24,
        ),
        child: Column(
          children: [
            const CustomSearchTextFormField(),
            SizedBox(
              height: mediaQuery.size.height * 0.3,
              child: CustomFeatureBooksListView(
                onTapFeatureItem: () {},
                mediaQuery: mediaQuery,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
