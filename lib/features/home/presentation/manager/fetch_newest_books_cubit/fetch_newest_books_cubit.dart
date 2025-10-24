import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/features/home/domain/entities/book_entity.dart';
import 'package:bookly/features/home/domain/use_cases/fetch_newest_books_use_case.dart';
import 'package:bookly/features/home/presentation/manager/fetch_newest_books_cubit/fetch_newest_books_state.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FetchNewestBooksCubit extends Cubit<FetchNewestBooksState> {
  FetchNewestBooksCubit(this.fetchNewestBooksUseCase)
    : super(FetchNewestBooksInitialState());

  final FetchNewestBooksUseCase fetchNewestBooksUseCase;

  Future<void> fetchNewestBooks() async {
    final Either<Failure, List<BookEntity>> result =
        await fetchNewestBooksUseCase.call();

    result.fold(
      (failure) {
        emit(
          FetchNewestBooksFailureState(
            errorMessage: failure.errorMessage,
          ),
        );
      },
      (books) {
        emit(FetchNewestBooksSuccessState(books: books));
      },
    );
  }
}
