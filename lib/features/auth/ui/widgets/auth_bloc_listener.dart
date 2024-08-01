import 'package:books_app/core/helpers/extensions/app_navigator.dart';
import 'package:books_app/core/helpers/firebase_auth_error_code_handle.dart';
import 'package:books_app/features/auth/ui/auth_screen.dart';
import 'package:books_app/features/home/ui/home_screen.dart';
import 'package:floating_snackbar/floating_snackbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:floating_snackbar/floatingSnackBar.dart';
import '../../../app_bottom_nav_bar/ui/app_bottom_nav_bar.dart';
import '../../logic/auth_cubit/auth_cubit.dart';

class AuthBlocConsumer extends StatelessWidget {
  const AuthBlocConsumer({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        FocusScope.of(context).unfocus();

        if (state is LoginSuccess || state is RegisterSuccess) {
          context.pushReplacement(const AppBottomNavBar());
        } else if (state is LoginFailure) {
          floatingSnackBar(
            backgroundColor: Colors.red,
            message: authErrorHandler(
              code: state.errCode,
              type: AuthType.login,
            ),
            context: context,
          );
        } else if (state is RegisterFailure) {
          floatingSnackBar(
            backgroundColor: Colors.red,
            message: authErrorHandler(
              code: state.errCode,
              type: AuthType.register,
            ),
            context: context,
          );
        }
      },
      builder: (context, state) {
        return AbsorbPointer(
          absorbing: state is LoginLoading || state is RegisterLoading,
          child: child,
        );
      },
    );
  }
}
