import 'package:books_app/features/auth/logic/show_password_cubit/show_password_cubit.dart';
import 'package:books_app/features/auth/ui/widgets/login_form.dart';
import 'package:books_app/features/auth/ui/widgets/register_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../logic/auth_type_bar_cubit/auth_type_bar_cubit.dart';
import '../auth_screen.dart';

class AuthForm extends StatelessWidget {
  const AuthForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ShowPasswordCubit(),
      child: BlocBuilder<AuthTypeBarCubit, AuthTypeBarState>(
        builder: (context, state) {
          if (state is AuthTypeBarChanged) {
            if (state.type == AuthType.register) {
              return const RegisterForm();
            }
          }
          return const LoginForm();
        },
      ),
    );
  }
}
