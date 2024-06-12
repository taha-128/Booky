
import 'package:books_app/features/onboarding/logic/cubit/onboarding_cubit.dart';
import 'package:books_app/features/onboarding/ui/widgets/onboarding_screen_body.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OnboardingCubit(),
      child: const OnboardingScreenBody(),
    );
  }
}
