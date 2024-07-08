import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

import '../../../../core/theme/app_colors.dart';
import '../../logic/show_password_cubit/show_password_cubit.dart';

class ShowPasswordButton extends StatelessWidget {
  const ShowPasswordButton({super.key, required this.icon});
  final String icon;
  @override
  Widget build(BuildContext context) {
    return ZoomTapAnimation(
      onTap: () {
        context.read<ShowPasswordCubit>().handleShowPassword();
      },
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 8.h,
          horizontal: 10.w,
        ),
        child: SvgPicture.asset(
          icon,
          height: 30.h,
          color: AppColors.black60,
        ),
      ),
    );
  }
}
