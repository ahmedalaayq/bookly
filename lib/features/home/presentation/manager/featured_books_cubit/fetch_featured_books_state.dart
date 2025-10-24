import 'package:bookly/features/home/domain/entities/book_entity.dart';

abstract class FetchFeaturedBooksState {
  const FetchFeaturedBooksState();
}

final class FetchFeaturedBooksInitial
    extends FetchFeaturedBooksState {}

final class FetchFeaturedBooksLoading
    extends FetchFeaturedBooksState {}

final class FetchFeaturedBooksSuccess
    extends FetchFeaturedBooksState {
  const FetchFeaturedBooksSuccess({required this.books});
  final List<BookEntity> books;
}

final class FetchFeaturedBooksFailure
    extends FetchFeaturedBooksState {
  const FetchFeaturedBooksFailure({required this.errorMessage});
  final String errorMessage;
}
