import 'package:books_app/core/app_constants.dart';
import 'package:books_app/core/helpers/extensions/screen_details.dart';
import 'package:books_app/core/theme/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../logic/auth_type_bar_cubit/auth_type_bar_cubit.dart';
import 'widgets/auth_type_bar_widget.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => AuthTypeBarCubit()),
      ],
      child: Scaffold(
        body: Container(
          width: context.screenWidth,
          margin:
              EdgeInsets.symmetric(horizontal: AppConstants.horizontalSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Booky', style: AppStyles.style32),
              SizedBox(height: 40.h),
              const AuthTypeBar(),
            ],
          ),
        ),
      ),
    );
  }
}
