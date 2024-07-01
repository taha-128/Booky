import 'package:flutter_bloc/flutter_bloc.dart';

part 'show_password_state.dart';

class ShowPasswordCubit extends Cubit<ShowPasswordState> {
  ShowPasswordCubit() : super(ShowPasswordInitial());
  bool unShowed = true;

  void handleShowPassword() {
    unShowed = !unShowed;
    emit(ShowPasswordIconChanged());
  }
}
