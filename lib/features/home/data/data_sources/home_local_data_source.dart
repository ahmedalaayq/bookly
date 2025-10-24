import 'package:bookly/core/constants.dart';
import 'package:bookly/features/home/domain/entities/book_entity.dart';
import 'package:hive_flutter/hive_flutter.dart';

abstract class HomeLocalDataSource {
  // local data source --> cache data get directly
  List<BookEntity> fetchFeaturedBooks();
  List<BookEntity> fetchNewestBooks();
}

class HomeLocalDataSourceImpl extends HomeLocalDataSource {
  late Box<BookEntity> box;
  @override
  List<BookEntity> fetchFeaturedBooks() {
    box = Hive.box<BookEntity>(featuredBox);
    return box.values.toList();
  }

  @override
  List<BookEntity> fetchNewestBooks() {
    box = Hive.box<BookEntity>(newestBox);
    return box.values.toList();
  }
}
