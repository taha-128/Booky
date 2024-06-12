import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_styles.dart';
import '../../../../generated/l10n.dart';
import '../../logic/cubit/onboarding_cubit.dart';

class OnboardingScreenBody extends StatelessWidget {
  const OnboardingScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: OnBoardingSlider(
        totalPage: 3,
        finishButtonStyle: const FinishButtonStyle(
          backgroundColor: AppColors.darkBlue,
        ),
        skipTextButton: Text(
          S.of(context).skip,
          style: AppStyles.style20,
        ),
        trailing: Text(
          S.of(context).submit_button,
          style: AppStyles.style20,
        ),
        finishButtonText: S.of(context).finish_button,
        finishButtonTextStyle: AppStyles.style20.copyWith(
          color: AppColors.white,
        ),
        onFinish: () {
          context.read<OnboardingCubit>().navigateToAuthScreen(context);
        },
        trailingFunction: () {
          context.read<OnboardingCubit>().navigateToAuthScreen(context);
        },
        controllerColor: AppColors.darkBlue,
        headerBackgroundColor: AppColors.white,
        background: context.read<OnboardingCubit>().backgroundItems,
        speed: 1.8,
        pageBodies: context.read<OnboardingCubit>().pageBodies(context),
      ),
    );
  }
}
