import 'package:dio/dio.dart';

import 'error_model.dart';

class ServerException {
  final ErrorModel error;

  ServerException({required this.error});
}

void handleDioException(DioException e) {
  switch (e.type) {
    case DioExceptionType.connectionTimeout:
      throw ServerException(error: ErrorModel.fromJson(e.response!.data));

    case DioExceptionType.sendTimeout:
      throw ServerException(error: ErrorModel.fromJson(e.response!.data));

    case DioExceptionType.receiveTimeout:
      throw ServerException(error: ErrorModel.fromJson(e.response!.data));

    case DioExceptionType.badCertificate:
      throw ServerException(error: ErrorModel.fromJson(e.response!.data));

    case DioExceptionType.cancel:
      throw ServerException(error: ErrorModel.fromJson(e.response!.data));

    case DioExceptionType.connectionError:
      throw ServerException(error: ErrorModel.fromJson(e.response!.data));

    case DioExceptionType.unknown:
      throw ServerException(error: ErrorModel.fromJson(e.response!.data));

    case DioExceptionType.badResponse:
      switch (e.response!.statusCode) {
        case 400: //* Bad request
          throw ServerException(
            error: ErrorModel.fromJson(e.response!.data),
          );

        case 401: //* Unauthorized
          throw ServerException(
            error: ErrorModel.fromJson(e.response!.data),
          );

        case 403: //* forbiddenn
          throw ServerException(
            error: ErrorModel.fromJson(e.response!.data),
          );

        case 404: //* Not found
          throw ServerException(
            error: ErrorModel.fromJson(e.response!.data),
          );

        case 409: //* Cofficient
          throw ServerException(
            error: ErrorModel.fromJson(e.response!.data),
          );

        case 422: //* Unprocessable Entity
          throw ServerException(
            error: ErrorModel.fromJson(e.response!.data),
          );

        case 504: //* Bad request
          throw ServerException(
            error: ErrorModel.fromJson(e.response!.data),
          );
      }
  }
}
