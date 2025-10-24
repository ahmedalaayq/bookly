import 'package:bookly/features/home/domain/entities/book_entity.dart';

abstract class FetchNewestBooksState {
  const FetchNewestBooksState();
}

final class FetchNewestBooksInitialState
    extends FetchNewestBooksState {}

final class FetchNewestBooksLoadingState
    extends FetchNewestBooksState {}

final class FetchNewestBooksSuccessState
    extends FetchNewestBooksState {
  const FetchNewestBooksSuccessState({required this.books});
  final List<BookEntity> books;
}

final class FetchNewestBooksFailureState
    extends FetchNewestBooksState {
  const FetchNewestBooksFailureState({required this.errorMessage});
  final String errorMessage;
}
