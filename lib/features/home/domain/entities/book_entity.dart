import 'package:hive_flutter/hive_flutter.dart';
part 'book_entity.g.dart';

@HiveType(typeId: 0)
class BookEntity extends HiveObject {
  @HiveField(0)
  final String bookId;
  @HiveField(1)
  final String title;
  @HiveField(2)
  final String? image;
  @HiveField(3)
  final String? author;
  @HiveField(4)
  final num? price;
  @HiveField(5)
  final num? rating;

  BookEntity({
    required this.bookId,
    required this.title,
    required this.image,
    required this.author,
    required this.price,
    required this.rating,
  });

  @override
  toString() {
    return 'BookEntity(bookId: $bookId, title: $title, image: $image, author: $author, price: $price, rating: $rating)';
  }
}
