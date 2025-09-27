import 'package:bookly/features/home/presentation/views/book_details_view_body.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_details_view_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomBookDetailsViewAppBar(
        onPressedLeadingIcon: () {
          GoRouter.of(context).pop();
        },
      ),
      body: const BookDetailsViewBody(),
    );
  }
}
