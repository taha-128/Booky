import 'package:books_app/core/di/dependency_injection.dart';
import 'package:books_app/core/helpers/cache_helper.dart';
import 'package:books_app/core/helpers/extensions/app_navigator.dart';
import 'package:books_app/features/auth/ui/auth_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import '../../../../core/theme/app_images.dart';
import '../../../../generated/l10n.dart';
import '../../ui/widgets/onboarding_page_body_widget.dart';

part 'onboarding_state.dart';

class OnboardingCubit extends Cubit<OnboardingState> {
  OnboardingCubit() : super(OnboardingInitial());

  List<Widget> backgroundItems = [
    Image.asset(
      AppImages.onboarding1,
      height: 350.h,
    ),
    Image.asset(
      AppImages.onboarding2,
      height: 350.h,
    ),
    Image.asset(
      AppImages.onboarding3,
      height: 350.h,
    ),
  ];

  List<Widget> pageBodies(BuildContext context) => [
        OnboardingPageBody(
          title: S.of(context).onboarding_title1,
          subTitle: S.of(context).onboarding_sub_title1,
        ),
        OnboardingPageBody(
          title: S.of(context).onboarding_title2,
          subTitle: S.of(context).onboarding_sub_title2,
        ),
        OnboardingPageBody(
          title: S.of(context).onboarding_title3,
          subTitle: S.of(context).onboarding_sub_title3,
        ),
      ];

  Future<void> navigateToAuthScreen(BuildContext context) async {
    getIt.get<CacheHelper>().changeFirstOpen();
    context.pushReplacement(const AuthScreen());
  }
}
