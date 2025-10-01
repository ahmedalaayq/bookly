import 'dart:developer';

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
      endPoint: 'volumes?q=programming&Filtering=free-ebooks',
    );

    return getBooksList(data);
  }

  List<BookEntity> getBooksList(Map<String, dynamic> data) {
    List<BookEntity> books = [];
    
    for (int i = 0; i < data.length; i++) {
      books.add(BookModel.fromJson(data['items'][i]));
    }
    
    late String fetchedData;
    for (var book in books) {
      fetchedData = book.printData();
    }
    log(fetchedData);
    return books;
  }

  @override
  Future<List<BookEntity>> fetchNewestBooks() {
    throw UnimplementedError();
  }
}
