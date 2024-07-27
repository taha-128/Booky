import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/app_constants.dart';
import '../../../../core/helpers/books_helper.dart';
import '../../../../core/models/book_model.dart';

part 'search_books_state.dart';

class SearchBooksCubit extends Cubit<SearchBooksState> {
  SearchBooksCubit() : super(SearchBooksInitial());

  List<BookModel> freeBooks = [];

  List<BookModel> paidBooks = [];

  Future<void> getBooks() async {
    getFreeBooks();
    getPaidBooks();
  }

  Future<void> getFreeBooks({int? maxResults}) async {
    emit(SearchBooksLoading());
    final response = await BooksHelper.getBooks(
      title: 'free',
      filter: AppConstants.freeEbooks,
      maxResults: maxResults ?? 8,
    );
    response.fold(
      (error) => emit(SearchBooksFailure(errMessage: error.message)),
      (books) {
        freeBooks = books;
        emit(SearchBooksSuccess(books: books));
      },
    );
  }

  Future<void> getPaidBooks({int? maxResults}) async {
    emit(SearchBooksLoading());
    final response = await BooksHelper.getBooks(
      title: 'paid',
      filter: AppConstants.paidEbooks,
      maxResults: maxResults ?? 8,
    );
    response.fold(
      (error) => emit(SearchBooksFailure(errMessage: error.message)),
      (books) {
        paidBooks = books;
        emit(SearchBooksSuccess(books: books));
      },
    );
  }
}
