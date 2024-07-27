import 'package:books_app/core/helpers/extensions/screen_details.dart';
import 'package:books_app/core/widgets/book_widget/books_list_view_label.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../models/book_model.dart';
import 'book_widget.dart';

class BooksListView extends StatelessWidget {
  const BooksListView({
    super.key,
    this.showLabel = true,
    required this.books,
    this.label,
  });

  final bool showLabel;
  final List<BookModel> books;
  final String? label;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (showLabel)
          Column(
            children: [
              BooksListViewLabel(label: label ?? ''),
              SizedBox(height: 12.h),
            ],
          ),
        SizedBox(
          width: context.screenWidth,
          height: 220.h,
          child: ListView.separated(
            itemCount: books.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return BookWidget(book: books[index]);
            },
            separatorBuilder: (context, index) => SizedBox(width: 20.w),
          ),
        ),
      ],
    );
  }
}
