import 'package:books_app/core/helpers/extensions/screen_details.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/app_constants.dart';

import 'hello_widget.dart';
import 'home_center_section.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: AppConstants.getScreenMargin(context),
      width: context.screenWidth,
      height: context.screenHeight,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const HomeScreenHelloWidget(),
          SizedBox(height: 30.h),
          const HomeScreenCenterSection(),
        ],
      ),
    );
  }
}
