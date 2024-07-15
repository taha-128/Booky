import 'package:books_app/core/models/book_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../theme/app_styles.dart';
import 'book_image_widget.dart';

class BookWidget extends StatelessWidget {
  const BookWidget({super.key, required this.book});
  final BookModel book;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          BookImageWidget(imageLink: book.info.thumbnail),
          SizedBox(height: 4.h),
          Text(
            book.info.title,
            textAlign: TextAlign.center,
            style: AppStyles.style12,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
