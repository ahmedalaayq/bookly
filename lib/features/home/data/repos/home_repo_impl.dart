import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/features/home/data/data_sources/home_local_data_source.dart';
import 'package:bookly/features/home/data/data_sources/home_remote_data_source.dart';
import 'package:bookly/features/home/domain/entities/book_entity.dart';
import 'package:bookly/features/home/domain/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl extends HomeRepo {
  final HomeRemoteDataSource homeRemoteDataSource;
  final HomeLocalDataSource homeLocalDataSource;

  HomeRepoImpl({
    required this.homeRemoteDataSource,
    required this.homeLocalDataSource,
  });
  late List<BookEntity> books;

  @override
  Future<Either<Failure, List<BookEntity>>>
  fetchFeaturedBooks() async {
    // fetch books
    try {
      books = homeLocalDataSource.fetchFeaturedBooks();
      if (books.isNotEmpty) {
        return Right(books);
      }
      books = await homeRemoteDataSource.fetchFeaturedBooks();
      return Right(books);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDioError(e));
      }
      return Left(ServerFailure(errorMessage: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookEntity>>> fetchNewestBooks() async {
    // fetch books
    try {
      books = homeLocalDataSource.fetchNewestBooks();
      if (books.isNotEmpty) {
        return Right(books);
      }
      books = await homeRemoteDataSource.fetchNewestBooks();
      return Right(books);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDioError(e));
      }
      return Left(ServerFailure(errorMessage: e.toString()));
    }
  }
}
