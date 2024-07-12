import 'package:books_app/core/networking/api/api_keys.dart';

class ErrorModel {
  final int code;
  final String message;
  final List<String> errors;

  ErrorModel({required this.code, required this.message, required this.errors});

  factory ErrorModel.fromJson(Map<String, dynamic> json) {
    return ErrorModel(
      code: json[ApiKeys.errorKey][ApiKeys.codeKey],
      message: json[ApiKeys.errorKey][ApiKeys.messageKey],
      errors: json[ApiKeys.errorKey][ApiKeys.errorsKey],
    );
  }
}
