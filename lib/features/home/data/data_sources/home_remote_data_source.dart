import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/domain/entities/book_entity.dart';

abstract class HomeRemoteDataSource {
  Future<List<BookEntity>> fetchFeaturedBooks(String endPoint);
  Future<List<BookEntity>> fetchNewestBooks(String endPoint);
}


class HomeRemoteDataSourceImpl extends HomeRemoteDataSource
{
  @override
  Future<List<BookEntity>> fetchFeaturedBooks(String endPoint) {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }

  @override
  Future<List<BookEntity>> fetchNewestBooks(String endPoint) {
    // TODO: implement fetchNewestBooks
    throw UnimplementedError();
  }

}