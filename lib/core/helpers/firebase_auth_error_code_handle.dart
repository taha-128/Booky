import 'package:books_app/features/auth/ui/auth_screen.dart';
import 'package:books_app/generated/l10n.dart';
import 'package:flutter/material.dart';

String authErrorHandler(
  BuildContext context, {
  required String code,
  required AuthType type,
}) {
  if (code == 'invalid-email') {
    return S.of(context).invalid_email;
  } else if (code == 'invalid-credential') {
    return S.of(context).invalid_credential;
  } else {
    if (type == AuthType.login) {
      if (code == 'wrong-password') {
        return S.of(context).wrong_password;
      } else if (code == 'user-not-found') {
        return S.of(context).user_not_found;
      } else {
        return S.of(context).there_is_error;
      }
    } else {
      if (code == 'email-already-in-use') {
        return S.of(context).email_already_in_use;
      } else if (code == 'weak-password') {
        return S.of(context).weak_password;
      } else {
        return S.of(context).there_is_error;
      }
    }
  }
}
