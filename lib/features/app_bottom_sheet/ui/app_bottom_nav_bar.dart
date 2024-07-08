import 'package:books_app/features/app_bottom_sheet/logic/cubit/bottom_nav_bar_cubit.dart';
import 'package:books_app/features/app_bottom_sheet/ui/widgets/app_bottom_nav_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppBottomNavBar extends StatelessWidget {
  const AppBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BottomNavBarCubit(),
      child: const AppBottomNavBarWidget(),
    );
  }
}
