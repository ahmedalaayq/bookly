  import 'package:bookly/core/logger.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/domain/entities/book_entity.dart';

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