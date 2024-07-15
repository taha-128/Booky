import 'dart:math';

import 'package:books_app/core/models/book_model.dart';
import 'package:books_app/generated/l10n.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/app_constants.dart';
import '../../../../core/helpers/books_helper.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  List<BookModel> homeBooks = [];

  String getHelloLabel() {
    return '${S.current.hi} ${FirebaseAuth.instance.currentUser!.displayName!}';
  }

  Future<void> getHomeBooks() async {
    emit(BooksLoading());
    final response = await BooksHelper.getBooks(
      title: AppConstants.booksTopics[Random().nextInt(3)],
      maxResults: 6,
    );
    response.fold(
      (error) => emit(BooksFailure(errMessage: error.message)),
      (books) {
        homeBooks = books;
        emit(BooksSuccess(books: books));
      },
    );
  }
}
