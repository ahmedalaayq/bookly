import 'dart:developer';

import 'package:bookly/core/logger.dart';
import 'package:bookly/core/utils/api_endpoints.dart';
import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/domain/entities/book_entity.dart';

abstract class HomeRemoteDataSource {
  Future<List<BookEntity>> fetchFeaturedBooks();
  Future<List<BookEntity>> fetchNewestBooks();
}

class HomeRemoteDataSourceImpl extends HomeRemoteDataSource {
  HomeRemoteDataSourceImpl(this._apiService);
  final ApiService _apiService;

  @override
  Future<List<BookEntity>> fetchFeaturedBooks() async {
    var data = await _apiService.get(
      endPoint: ApiEndpoints.volumesEndPoint,
      queryParameters: {
        'q': 'programming',
        'Filtering': 'free-ebooks',
      },
    );

    return getBooksList(data);
  }

  @override
  Future<List<BookEntity>> fetchNewestBooks() async {
    var data = await _apiService.get(
      endPoint: ApiEndpoints.volumesEndPoint,
      queryParameters: {
        'q': 'programming',
        'Filtering': 'free-ebooks',
        'Sorting': 'newest',
      },
    );

    return getBooksList(data);
  }

  List<BookEntity> getBooksList(Map<String, dynamic> data) {
    List<BookEntity> books = [];

    for (int i = 0; i < data.length; i++) {
      books.add(BookModel.fromJson(data['items'][i]));
    }

    for (var book in books) {
      LoggerImpl().dataLog(book.toString());
    }
    return books;
  }
}
