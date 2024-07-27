import 'package:books_app/core/helpers/extensions/screen_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppConstants {
  static const firstScreenBox = 'first_screen';
  static const isFirstOpen = 'first_open';

  static final horizontalSpace = 22.w;
  static final verticalSpace = 50.h;

  static EdgeInsets getScreenMargin(BuildContext context) {
    return EdgeInsets.only(
      top: AppConstants.verticalSpace,
      right: context.isArabic ? AppConstants.horizontalSpace : 12.w,
      left: context.isArabic ? 12.w : AppConstants.horizontalSpace,
    );
  }

  static const freeEbooks = 'free-ebooks';
  static const paidEbooks = 'paid-ebooks';

  static const booksTopics = [
    'flutter',
    'english',
    'football',
    'sports',
  ];
}
