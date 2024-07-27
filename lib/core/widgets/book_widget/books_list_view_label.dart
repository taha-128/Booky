import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

import '../../../generated/l10n.dart';
import '../../theme/app_colors.dart';
import '../../theme/app_styles.dart';

class BooksListViewLabel extends StatelessWidget {
  const BooksListViewLabel({super.key, required this.label});
  final String label;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          label,
          style: AppStyles.style18,
        ),
        const Spacer(),
        ZoomTapAnimation(
          onTap: () {},
          child: Text(
            S.of(context).see_all,
            style: AppStyles.style18.copyWith(color: AppColors.lightGrey),
          ),
        ),
        SizedBox(width: 12.w)
      ],
    );
  }
}
