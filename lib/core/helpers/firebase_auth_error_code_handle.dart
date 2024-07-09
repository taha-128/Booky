import 'package:books_app/features/auth/ui/auth_screen.dart';
import 'package:books_app/generated/l10n.dart';

String authErrorHandler({
  required String code,
  required AuthType type,
}) {
  if (code == 'invalid-email') {
    return S.current.invalid_email;
  } else if (code == 'invalid-credential') {
    return S.current.invalid_credential;
  } else {
    if (type == AuthType.login) {
      if (code == 'wrong-password') {
        return S.current.wrong_password;
      } else if (code == 'user-not-found') {
        return S.current.user_not_found;
      } else {
        return S.current.there_is_error;
      }
    } else {
      if (code == 'email-already-in-use') {
        return S.current.email_already_in_use;
      } else if (code == 'weak-password') {
        return S.current.weak_password;
      } else {
        return S.current.there_is_error;
      }
    }
  }
}
