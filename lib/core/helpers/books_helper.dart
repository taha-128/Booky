import 'package:books_app/core/app_constants.dart';
import 'package:books_app/core/di/dependency_injection.dart';
import 'package:books_app/core/networking/api/dio_consumer.dart';
import 'package:books_app/core/networking/errors/dio_exception_handler.dart';
import 'package:dartz/dartz.dart';

import '../models/book_model.dart';
import '../networking/api/api_keys.dart';
import '../networking/errors/error_model.dart';

class BooksHelper {
  static Future<Either<ErrorModel, List<BookModel>>> getBooks({
    required String title,
    int maxResults = 10,
  }) async {
    try {
      Map response = await getIt.get<DioConsumer>().get(
        ApiKeys.baseUrl,
        queryParameters: {
          QueryParameters.title: title,
          QueryParameters.filter: AppConstants.freeEbooks,
          QueryParameters.maxResults: maxResults,
        },
      );

      List booksJson = response[ApiKeys.items];

      List<BookModel> books =
          booksJson.map((book) => BookModel.fromJson(book)).toList();

      return Right(books);
    } on ServerException catch (e) {
      return Left(e.error);
    }
  }
}
