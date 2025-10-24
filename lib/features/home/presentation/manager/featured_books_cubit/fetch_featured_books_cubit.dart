import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/features/home/domain/entities/book_entity.dart';
import 'package:bookly/features/home/domain/use_cases/fetch_featured_books_use_case.dart';
import 'package:bookly/features/home/presentation/manager/featured_books_cubit/fetch_featured_books_state.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FetchFeaturedBooksCubit extends Cubit<FetchFeaturedBooksState> {
  FetchFeaturedBooksCubit(this.fetchFeaturedBooksUseCase)
    : super(FetchFeaturedBooksInitial());

  final FetchFeaturedBooksUseCase fetchFeaturedBooksUseCase;

  Future<void> fetchFeaturedBooks() async {
    emit(FetchFeaturedBooksLoading());
    Either<Failure, List<BookEntity>> result =
        await fetchFeaturedBooksUseCase.call();
    result.fold(
      (Failure failure) {
        emit(
          FetchFeaturedBooksFailure(
            errorMessage: failure.errorMessage,
          ),
        );
      },
      (List<BookEntity> books) {
        emit(FetchFeaturedBooksSuccess(books: books));
      },
    );
  }
}
