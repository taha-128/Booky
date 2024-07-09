import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/widgets/book_widget/books_list_view.dart';

class HomeScreenCenterSection extends StatelessWidget {
  const HomeScreenCenterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const BooksListView(showLabel: false),
        SizedBox(height: 35.h),
        const BooksListView(),
      ],
    );
  }
}
