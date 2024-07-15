import 'package:books_app/core/theme/app_colors.dart';
import 'package:books_app/core/theme/app_styles.dart';
import 'package:books_app/features/home/logic/home_cubit/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/widgets/book_widget/books_list_view.dart';

class HomeScreenCenterSection extends StatelessWidget {
  const HomeScreenCenterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BlocBuilder<HomeCubit, HomeState>(
          builder: (context, state) {
            if (state is BooksLoading) {
              return const Center(
                child: CircularProgressIndicator(color: AppColors.darkGrey),
              );
            } else if (state is BooksSuccess) {
              return BooksListView(
                showLabel: false,
                books: state.books,
              );
            } else if (state is BooksFailure) {
              return Center(
                child: Text(
                  state.errMessage,
                  style: AppStyles.style20.copyWith(color: Colors.red),
                ),
              );
            } else {
              return const SizedBox();
            }
          },
        ),
        SizedBox(height: 35.h),
        //* Do it after creating my_books screen
        const BooksListView(
          books: [],
        ),
      ],
    );
  }
}
