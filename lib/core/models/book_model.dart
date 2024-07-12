import 'package:books_app/core/networking/api/api_keys.dart';

import 'book_info_model.dart';

class BookModel {
  final String id;
  final String? downloadLink;
  final BookInfoModel info;

  BookModel({
    required this.id,
    this.downloadLink,
    required this.info,
  });

  factory BookModel.fromJson(Map<String, dynamic> json) {
    return BookModel(
      id: ApiKeys.id,
      downloadLink: json[ApiKeys.accessInfo][ApiKeys.pdf][ApiKeys.downloadLink],
      info: BookInfoModel.fromJson(json[ApiKeys.info]),
    );
  }
}
