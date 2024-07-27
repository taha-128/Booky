import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'search_bar_state.dart';

class SearchBarCubit extends Cubit<SearchState> {
  SearchBarCubit() : super(SearchInitial());

  final searchController = TextEditingController();
}
