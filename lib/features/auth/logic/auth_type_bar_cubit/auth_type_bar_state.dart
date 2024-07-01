part of 'auth_type_bar_cubit.dart';

enum AuthType { register, login }

sealed class AuthTypeBarState {}

final class AuthTypeBarInitial extends AuthTypeBarState {}

final class AuthTypeBarChanged extends AuthTypeBarState {
  final AuthType type;

  AuthTypeBarChanged({required this.type});
}
