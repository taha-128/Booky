part of 'home_cubit.dart';

sealed class HomeState {}

final class HomeInitial extends HomeState {}

final class BooksLoading extends HomeState {}

final class BooksSuccess extends HomeState {
  final List<BookModel> books;

  BooksSuccess({required this.books});
}

final class BooksFailure extends HomeState {
  final String errMessage;

  BooksFailure({required this.errMessage});
}
