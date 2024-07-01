import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../generated/l10n.dart';
import '../../logic/auth_cubit/auth_cubit.dart';
import 'custom_text_field.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<AuthCubit>().formKey,
      autovalidateMode: context.read<AuthCubit>().autoValidateMode,
      child: Column(
        children: [
          CustomTextField(
            controller: context.read<AuthCubit>().nameController,
            labelText: S.of(context).name,
            hintText: S.of(context).name_hint,
          ),
          SizedBox(height: 24.h),
          CustomTextField(
            controller: context.read<AuthCubit>().registerEmailController,
            labelText: S.of(context).email,
            hintText: S.of(context).email_hint,
          ),
          SizedBox(height: 24.h),
          CustomTextField(
            controller: context.read<AuthCubit>().registerPasswordController,
            labelText: S.of(context).password,
            hintText: S.of(context).password_hint,
            isPassword: true,
          ),
        ],
      ),
    );
  }
}
