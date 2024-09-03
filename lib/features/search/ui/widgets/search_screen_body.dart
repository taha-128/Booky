import 'package:books_app/core/helpers/extensions/screen_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/app_constants.dart';
import 'books_center_section.dart';
import 'search_bar_widget.dart';

class SearchScreenBody extends StatelessWidget {
  const SearchScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: AppConstants.getScreenMargin(context),
      width: context.screenWidth,
      height: context.screenHeight,
      child: Column(
        children: [
          const SearchBarWidget(),
          SizedBox(height: 12.h),
          const BooksCenterSection(),
        ],
      ),
    );
  }
}
