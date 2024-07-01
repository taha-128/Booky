import 'package:books_app/features/auth/logic/show_password_cubit/show_password_cubit.dart';
import 'package:books_app/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../logic/auth_cubit/auth_cubit.dart';
import 'custom_text_field.dart';

class AuthForm extends StatelessWidget {
  const AuthForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ShowPasswordCubit(),
      child: Form(
        key: context.read<AuthCubit>().formKey,
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
          ],
        ),
      ),
    );
  }
}
