import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../logic/auth_cubit/auth_cubit.dart';
import '../logic/auth_type_bar_cubit/auth_type_bar_cubit.dart';

import 'widgets/auth_screen_body.dart';

enum AuthType { register, login }

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => AuthTypeBarCubit()),
        BlocProvider(create: (_) => AuthCubit()),
      ],
      child: const Scaffold(
        resizeToAvoidBottomInset: false,
        body: AuthScreenBody(),
      ),
    );
  }
}
