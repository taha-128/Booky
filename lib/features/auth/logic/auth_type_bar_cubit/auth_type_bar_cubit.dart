import 'package:flutter_bloc/flutter_bloc.dart';

part 'auth_type_bar_state.dart';

class AuthTypeBarCubit extends Cubit<AuthTypeBarState> {
  AuthTypeBarCubit() : super(AuthTypeBarInitial());

  AuthType authType = AuthType.login;
  void changeAuthType(AuthType authType) {
    this.authType = authType;
    emit(AuthTypeBarChanged(type: authType));
  }
}
