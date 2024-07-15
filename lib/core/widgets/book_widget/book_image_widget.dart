import 'package:books_app/core/helpers/extensions/screen_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

import '../../theme/app_colors.dart';

class BookImageWidget extends StatelessWidget {
  const BookImageWidget({super.key, required this.imageLink});
  final String imageLink;

  @override
  Widget build(BuildContext context) {
    return ZoomTapAnimation(
      end: .96,
      onTap: () {},
      child: Container(
        padding: EdgeInsets.only(
          bottom: 4.h,
          right: context.isArabic ? 5.w : 0,
          left: context.isArabic ? 0 : 5.w,
        ),
        width: 120.w,
        height: 160.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.darkGrey,
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.network(
            imageLink,
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
