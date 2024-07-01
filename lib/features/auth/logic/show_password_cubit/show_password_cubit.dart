import 'package:books_app/core/theme/app_svgs.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'show_password_state.dart';

class ShowPasswordCubit extends Cubit<ShowPasswordState> {
  ShowPasswordCubit() : super(ShowPasswordInitial());
  bool isShowed = false;

  void handleShowPassword() {
    isShowed = !isShowed;
    emit(
        ShowPasswordIconChanged(icon: isShowed ? AppSvgs.eye : AppSvgs.eyeOff));
  }
}
