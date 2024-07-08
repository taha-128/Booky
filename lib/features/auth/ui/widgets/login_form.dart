
import 'package:books_app/features/auth/ui/auth_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../generated/l10n.dart';
import '../../logic/auth_cubit/auth_cubit.dart';
import 'auth_button.dart';
import 'custom_text_field.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<AuthCubit>().loginFormKey,
      autovalidateMode: context.read<AuthCubit>().autoValidateMode,
      child: Column(
        children: [
          CustomTextField(
            controller: context.read<AuthCubit>().loginEmailController,
            labelText: S.of(context).email,
            hintText: S.of(context).email_hint,
          ),
          SizedBox(height: 24.h),
          CustomTextField(
            controller: context.read<AuthCubit>().loginPasswordController,
            labelText: S.of(context).password,
            hintText: S.of(context).password_hint,
            isPassword: true,
          ),
          SizedBox(height: 50.h),
          const AuthButton(authType: AuthType.login),
        ].animate().scaleY(),
      ),
    );
  }
}
