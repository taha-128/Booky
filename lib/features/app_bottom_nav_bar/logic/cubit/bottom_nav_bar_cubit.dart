import 'package:books_app/features/home/ui/home_screen.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_svgs.dart';
import '../../../my_books/ui/my_books_screen.dart';
import '../../../search/ui/search_screen.dart';
part 'bottom_nav_bar_state.dart';

class BottomNavBarCubit extends Cubit<BottomNavBarState> {
  BottomNavBarCubit() : super(BottomNavBarInitial());

  int currentIndex = 0;
  Widget currentScreen = const HomeScreen();

  void changeScreen(int index) {
    currentIndex = index;
    currentScreen = screens[index];
    emit(BottomNavBarChanged());
  }

  List<Widget> screens = [
    const HomeScreen(),
    const SearchScreen(),
    const MyBooksScreen(),
  ];

  List<BottomNavigationBarItem> items = [
    BottomNavigationBarItem(
      label: 'Home',
      activeIcon: SvgPicture.asset(
        AppSvgs.www,
        width: 50.w,
        color: AppColors.darkGrey,
      ),
      icon: SvgPicture.asset(
        AppSvgs.www,
        width: 50.w,
        color: AppColors.black40,
      ),
    ),
    BottomNavigationBarItem(
      label: 'Search',
      activeIcon: SvgPicture.asset(
        AppSvgs.search,
        width: 28.w,
        color: AppColors.darkGrey,
      ),
      icon: SvgPicture.asset(
        AppSvgs.search,
        width: 28.w,
        color: AppColors.black40,
      ),
    ),
    BottomNavigationBarItem(
      label: 'My Books',
      activeIcon: SvgPicture.asset(
        AppSvgs.book,
        width: 38.w,
        color: AppColors.darkGrey,
      ),
      icon: SvgPicture.asset(
        AppSvgs.book,
        width: 38.w,
        color: AppColors.black40,
      ),
    ),
  ];
}
