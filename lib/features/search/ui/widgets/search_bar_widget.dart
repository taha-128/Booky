import 'package:books_app/core/helpers/extensions/screen_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_styles.dart';
import '../../../../core/theme/app_svgs.dart';
import '../../../../generated/l10n.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45.h,
      width: context.screenWidth,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: AppColors.lighterGrey,
      ),
      child: TextFormField(
        controller: TextEditingController(),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 8.h),
          hintText: S.current.search,
          hintStyle: AppStyles.style16Cairo,
          prefixIcon: Padding(
            padding: EdgeInsets.symmetric(vertical: 8.h),
            child: SvgPicture.asset(
              AppSvgs.search,
              color: AppColors.lightGrey,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: const BorderSide(color: AppColors.lighterGrey),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: const BorderSide(color: AppColors.lighterGrey),
          ),
        ),
      ),
    );
  }
}
