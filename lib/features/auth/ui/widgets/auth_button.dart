import 'package:books_app/core/helpers/extensions/screen_details.dart';
import 'package:books_app/core/theme/app_colors.dart';
import 'package:books_app/core/theme/app_styles.dart';
import 'package:books_app/features/auth/logic/auth_cubit/auth_cubit.dart';
import 'package:books_app/features/auth/ui/auth_screen.dart';
import 'package:books_app/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthButton extends StatelessWidget {
  final AuthType authType;

  const AuthButton({super.key, required this.authType});

  @override
  Widget build(BuildContext context) {
    bool isLogin() => authType == AuthType.login;
    return MaterialButton(
      onPressed: () {
        if (authType == AuthType.login) {
          context.read<AuthCubit>().loginWithEmailAndPassword();
        } else {
          context.read<AuthCubit>().registerWithEmailAndPassword();
        }
      },
      height: 55.h,
      minWidth: context.screenWidth,
      color: AppColors.black,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: BlocBuilder<AuthCubit, AuthState>(
        builder: (context, state) {
          if (state is LoginLoading && isLogin()) {
            return const CircularProgressIndicator(color: AppColors.white);
          } else if (state is RegisterLoading && !isLogin()) {
            return const CircularProgressIndicator(color: AppColors.white);
          } else {
            return Text(
              isLogin() ? S.of(context).login : S.of(context).register,
              style: AppStyles.style16.copyWith(color: AppColors.white),
            );
          }
        },
      ),
    );
  }
}
