import 'dart:developer';

import 'package:dio/dio.dart';

class ApiService {
  ApiService(this._dio);
  final Dio _dio;

  static const String baseUrl =
      'https://www.googleapis.com/books/v1/';

  Future<Map<String, dynamic>?> get({
    required String endPoint,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      var response = await _dio.get(
        '$baseUrl$endPoint',
        queryParameters: {...queryParameters ?? {}},
      );
      return response.data;
    } catch (e) {
      log(e.toString());
    }
  }

  Future<Map<String, dynamic>> post({
    required String endPoint,
    Map<String, dynamic>? body,
  }) async {
    var response = await _dio.post(
      '$baseUrl$endPoint',
      data: body,
      options: Options(headers: {"Content-Type": "application/json"}),
    );
    return response.data;
  }
}
