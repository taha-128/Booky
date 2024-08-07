import 'package:books_app/features/auth/logic/show_password_cubit/show_password_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_styles.dart';
import '../../../../core/theme/app_svgs.dart';
import 'show_password_button.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.labelText,
    this.isPassword = false,
    this.validator,
  });

  final TextEditingController controller;
  final String hintText;
  final String labelText;
  final bool isPassword;
  final String? Function(String?)? validator;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(labelText, style: AppStyles.style14),
        SizedBox(height: 10.h),
        BlocBuilder<ShowPasswordCubit, ShowPasswordState>(
          builder: (context, state) {
            return TextFormField(
              obscureText: isPassword
                  ? context.read<ShowPasswordCubit>().unShowed
                  : false,
              validator: validator,
              controller: controller,
              style: AppStyles.style16,
              decoration: InputDecoration(
                hintText: hintText,
                hintStyle: AppStyles.style14.copyWith(color: AppColors.black50),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                    color: AppColors.lighterGrey,
                  ),
                ),
                suffixIcon: isPassword
                    ? ShowPasswordButton(
                        icon: context.read<ShowPasswordCubit>().unShowed
                            ? AppSvgs.eyeOff
                            : AppSvgs.eye,
                      )
                    : null,
              ),
            );
          },
        ),
      ],
    );
  }
}
