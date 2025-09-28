import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/core/use_cases/no_parameter_use_case.dart';
import 'package:bookly/features/home/domain/entities/book_entity.dart';
import 'package:bookly/features/home/domain/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class FetchNewestBooksUseCase extends UseCase<List<BookEntity>> {
  FetchNewestBooksUseCase({required this.homeRepo});
  final HomeRepo homeRepo;

  @override
  Future<Either<Failure, List<BookEntity>>> call() {
    return homeRepo.fetchNewestBooks();
  }
}
