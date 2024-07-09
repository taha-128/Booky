import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../theme/app_styles.dart';
import 'book_image_widget.dart';

class BookWidget extends StatelessWidget {
  const BookWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const BookImageWidget(),
          SizedBox(height: 4.h),
          Text(
            "Little Blue Truck's Halloween",
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
