import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../logic/cubit/bottom_nav_bar_cubit.dart';

class AppBottomNavBarWidget extends StatelessWidget {
  const AppBottomNavBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavBarCubit, BottomNavBarState>(
      builder: (context, state) {
        return Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            showSelectedLabels: false,
            showUnselectedLabels: false,
            currentIndex: context.read<BottomNavBarCubit>().currentIndex,
            items: context.read<BottomNavBarCubit>().items,
            onTap: (value) {
              context.read<BottomNavBarCubit>().changeScreen(value);
            },
          ),
          body: context.read<BottomNavBarCubit>().currentScreen,
        );
      },
    );
  }
}
