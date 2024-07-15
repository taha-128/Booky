import 'package:flutter/material.dart';

extension MobileDetails on BuildContext {
  double get screenWidth => MediaQuery.sizeOf(this).width;
  double get screenHeight => MediaQuery.sizeOf(this).height;

  bool get isArabic => Localizations.localeOf(this).languageCode == 'ar';
}
