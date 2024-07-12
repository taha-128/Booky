import 'package:books_app/core/networking/api/api_keys.dart';

class BookInfoModel {
  final String title, publishedDate, thumbnail;
  final String? description;
  final List<String> authors;
  final int pageCount;

  BookInfoModel({
    this.description,
    required this.title,
    required this.publishedDate,
    required this.thumbnail,
    required this.authors,
    required this.pageCount,
  });

  factory BookInfoModel.fromJson(Map<String, dynamic> json) {
    return BookInfoModel(
      title: json[ApiKeys.title],
      publishedDate: json[ApiKeys.publishedDate],
      thumbnail: json[ApiKeys.imageLinks][ApiKeys.thumbnail],
      authors: json[ApiKeys.authors],
      pageCount: json[ApiKeys.pageCount],
    );
  }
}
