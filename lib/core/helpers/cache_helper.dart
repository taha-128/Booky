import 'package:books_app/core/app_constants.dart';
import 'package:hive_flutter/hive_flutter.dart';

class CacheHelper {
  final _firstScreenBox = Hive.box<bool>(AppConstants.firstScreenBox);

  Future<void> changeFirstOpen() async {
    _firstScreenBox.put(
      AppConstants.isFirstOpen,
      false,
    );
  }

  bool isFirstOpen() {
    return _firstScreenBox.get(AppConstants.isFirstOpen) ?? true;
  }
}
