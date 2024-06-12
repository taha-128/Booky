import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/app_styles.dart';

class OnboardingPageBody extends StatelessWidget {
  const OnboardingPageBody({
    super.key,
    required this.title,
    required this.subTitle,
  });
  final String title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 425.h),
          Text(
            title,
            textAlign: TextAlign.center,
            style: AppStyles.style28,
            textDirection: TextDirection.rtl,
          ),
          SizedBox(height: 20.h),
          Text(
            subTitle,
            textAlign: TextAlign.center,
            style: AppStyles.style20,
            textDirection: TextDirection.rtl,
          ),
        ],
      ),
    );
  }
}
