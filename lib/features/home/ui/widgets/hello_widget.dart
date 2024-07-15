
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_styles.dart';
import '../../../../generated/l10n.dart';
import '../../logic/home_cubit/home_cubit.dart';

class HomeScreenHelloWidget extends StatelessWidget {
  const HomeScreenHelloWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          context.read<HomeCubit>().getHelloLabel(),
          style: AppStyles.style28,
        ),
        SizedBox(height: 2.h),
        Text(
          S.current.home_title,
          style: AppStyles.style16.copyWith(color: AppColors.grey),
        ),
      ],
    );
  }
}
