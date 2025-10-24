import 'package:bookly/core/logger.dart';
import 'package:dio/dio.dart';

abstract class Failure {
  const Failure({required this.errorMessage});
  final String errorMessage;
}

class ServerFailure extends Failure {
  ServerFailure({required super.errorMessage});

  factory ServerFailure.fromDioError(DioException error) {
    // Default fallback message
    const defaultMsg = 'An error occurred. Please try again later.';

    switch (error.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(
          errorMessage: 'Sorry, connection timed out.',
        );

      case DioExceptionType.sendTimeout:
        return ServerFailure(errorMessage: 'Sorry, send timed out.');

      case DioExceptionType.receiveTimeout:
        return ServerFailure(
          errorMessage: 'Sorry, receive timed out.',
        );

      case DioExceptionType.badCertificate:
        return ServerFailure(errorMessage: 'Sorry, bad certificate.');

      case DioExceptionType.badResponse:
        // If there's a bad response, try to map from statusCode
        final statusCode = error.response?.statusCode;
        return ServerFailure.dioErrorFromBadResponse(
          statusCode,
          error.response,
        );

      case DioExceptionType.cancel:
        return ServerFailure(errorMessage: 'Request was cancelled.');

      case DioExceptionType.connectionError:
        return ServerFailure(errorMessage: 'No Internet connection.');

      case DioExceptionType.unknown:
        // unknown might not have response; log available message safely
        LoggerImpl().errorLog(error.message ?? 'Unknown Dio error');
        return ServerFailure(
          errorMessage: error.message ?? defaultMsg,
        );
    }
  }

  factory ServerFailure.dioErrorFromBadResponse(
    int? statusCode, [
    Response? response,
  ]) {
    final msgFromResponse =
        response?.statusMessage ?? response?.data?.toString();

    switch (statusCode) {
      case 400:
        return ServerFailure(
          errorMessage: msgFromResponse ?? 'Bad request (400).',
        );
      case 401:
      case 403:
        return ServerFailure(errorMessage: 'Unauthorized request.');
      case 404:
        return ServerFailure(errorMessage: 'Page not found (404).');
      case 500:
        return ServerFailure(
          errorMessage: 'Internal server error (500).',
        );
      case 502:
      case 503:
      case 504:
        LoggerImpl().errorLog(
          msgFromResponse ?? 'Server error: $statusCode',
        );
        return ServerFailure(
          errorMessage: 'Server is currently unavailable.',
        );
      default:
        return ServerFailure(
          errorMessage:
              msgFromResponse ??
              'Received invalid status: $statusCode',
        );
    }
  }
}
