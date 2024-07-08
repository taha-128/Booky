part of 'auth_type_bar_cubit.dart';


sealed class AuthTypeBarState {}

final class AuthTypeBarInitial extends AuthTypeBarState {}

final class AuthTypeBarChanged extends AuthTypeBarState {
  final AuthType type;

  AuthTypeBarChanged({required this.type});
}
