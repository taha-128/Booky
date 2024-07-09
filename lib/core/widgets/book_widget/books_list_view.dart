import 'package:books_app/core/helpers/extensions/screen_details.dart';
import 'package:books_app/core/widgets/book_widget/books_list_view_label.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'book_widget.dart';

class BooksListView extends StatelessWidget {
  const BooksListView({super.key, this.showLabel = true});
  final bool showLabel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (showLabel)
          Column(
            children: [
              const BooksListViewLabel(),
              SizedBox(height: 10.h),
            ],
          ),
        SizedBox(
          width: context.screenWidth,
          height: 220.h,
          child: ListView.separated(
            itemCount: 6,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return const BookWidget();
            },
            separatorBuilder: (context, index) => SizedBox(width: 20.w),
          ),
        ),
      ],
    );
  }
}
