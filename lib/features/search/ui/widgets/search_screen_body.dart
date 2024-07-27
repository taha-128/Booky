import 'package:books_app/core/helpers/extensions/screen_details.dart';
import 'package:books_app/core/widgets/book_widget/books_list_view.dart';
import 'package:books_app/features/search/logic/search_books_cubit/search_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/app_constants.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_styles.dart';
import '../../../../generated/l10n.dart';
import 'search_bar_widget.dart';

class SearchScreenBody extends StatelessWidget {
  const SearchScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: AppConstants.getScreenMargin(context),
      width: context.screenWidth,
      height: context.screenHeight,
      child: Column(
        children: [
          const SearchBarWidget(),
          SizedBox(height: 12.h),
          const ListViewBooksSection(),
        ],
      ),
    );
  }
}

class ListViewBooksSection extends StatelessWidget {
  const ListViewBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BlocBuilder<SearchBooksCubit, SearchBooksState>(
          builder: (context, state) {
            if (state is SearchBooksLoading) {
              return const Center(
                child: CircularProgressIndicator(color: AppColors.darkGrey),
              );
            } else if (state is SearchBooksSuccess) {
              return BooksListView(
                label: S.of(context).free_ebooks,
                books: context.read<SearchBooksCubit>().freeBooks,
              );
            } else if (state is SearchBooksFailure) {
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
        SizedBox(height: 40.h),
        BlocBuilder<SearchBooksCubit, SearchBooksState>(
          builder: (context, state) {
            if (state is SearchBooksLoading) {
              return const Center(
                child: CircularProgressIndicator(color: AppColors.darkGrey),
              );
            } else if (state is SearchBooksSuccess) {
              return BooksListView(
                label: S.of(context).paid_ebooks,
                books: context.read<SearchBooksCubit>().paidBooks,
              );
            } else if (state is SearchBooksFailure) {
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
      ],
    );
  }
}
