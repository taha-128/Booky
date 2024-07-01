
import 'package:books_app/core/helpers/extensions/screen_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/app_constants.dart';
import '../../../../core/theme/app_styles.dart';
import 'auth_form_widget.dart';
import 'auth_type_bar_widget.dart';

class AuthScreenBody extends StatelessWidget {
  const AuthScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: context.screenWidth,
        margin: EdgeInsets.symmetric(horizontal: AppConstants.horizontalSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Booky', style: AppStyles.style32),
            SizedBox(height: 40.h),
            const AuthTypeBar(),
            SizedBox(height: 40.h),
            const AuthForm(),
          ],
        ),
      ),
    );
  }
}
