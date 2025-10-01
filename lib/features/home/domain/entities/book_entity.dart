class BookEntity {
  final String bookId;
  final String title;
  final String? image;
  final String? author;
  final num? price;
  final num? rating;

  const BookEntity({
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
