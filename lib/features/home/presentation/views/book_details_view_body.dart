import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'widgets/books_details_section.dart';
import 'widgets/similar_books_list_view.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final MediaQueryData mediaQuery = MediaQuery.of(context);
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              // TODO: Book Details Section
              const BookDetailsSection(),
              const Expanded(child: SizedBox(height: 50)),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24.0,
                  ),
                  child: Text(
                    'You can also like',
                    style: Styles.textStyle18,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              SimilarBooksListView(
                onTapSimilarItem: () {},
                mediaQuery: mediaQuery,
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ],
    );
  }
}
