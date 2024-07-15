import 'package:books_app/core/helpers/extensions/screen_details.dart';
import 'package:books_app/features/auth/logic/auth_type_bar_cubit/auth_type_bar_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/app_colors.dart';
import '../auth_screen.dart';
import 'auth_type_bar_buttons.dart';
import 'auth_type_item_widget.dart';

class AuthTypeBar extends StatelessWidget {
  const AuthTypeBar({super.key});

  @override
  Widget build(BuildContext context) {
    double getLeftSpace() {
      if (!context.isArabic) {
        if (context.read<AuthTypeBarCubit>().authType == AuthType.register) {
          return context.screenWidth / 2 - 28.w;
        } else {
          return 0;
        }
      } else {
        if (context.read<AuthTypeBarCubit>().authType == AuthType.register) {
          return 0;
        } else {
          return context.screenWidth / 2 - 28.w;
        }
      }
    }

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 4.w),
      width: context.screenWidth,
      height: 42.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.lighterGrey,
      ),
      child: BlocBuilder<AuthTypeBarCubit, AuthTypeBarState>(
        builder: (context, state) {
          return Stack(
            children: [
              AnimatedPositioned(
                duration: const Duration(milliseconds: 250),
                top: 4.h,
                bottom: 4.h,
                left: getLeftSpace(),
                child: const AuthTypeItem(title: '', color: AppColors.white),
              ),
              const Positioned.fill(child: AuthTypeBarButtons()),
            ],
          );
        },
      ),
    );
  }
}
