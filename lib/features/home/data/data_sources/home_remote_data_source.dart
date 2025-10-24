import 'package:bookly/core/constants.dart';
import 'package:bookly/core/functions/get_box_list.dart';
import 'package:bookly/core/utils/api_endpoints.dart';
import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/features/home/domain/entities/book_entity.dart';
import 'package:hive_flutter/hive_flutter.dart';

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
    List<BookEntity> allData = getBooksList(data ?? {});
    var box = Hive.box(featuredBox);
    await box.addAll(allData);

    return getBooksList(data ?? {});
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

    return getBooksList(data!);
  }
}
