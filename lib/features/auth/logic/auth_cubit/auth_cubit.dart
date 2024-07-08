import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  final auth = FirebaseAuth.instance;

  var loginFormKey = GlobalKey<FormState>();
  var registerFormKey = GlobalKey<FormState>();

  var autoValidateMode = AutovalidateMode.disabled;

  var loginEmailController = TextEditingController();
  var loginPasswordController = TextEditingController();

  var nameController = TextEditingController();
  var registerEmailController = TextEditingController();
  var registerPasswordController = TextEditingController();

  Future<void> loginWithEmailAndPassword() async {
    if (loginFormKey.currentState!.validate()) {
      emit(LoginLoading());
      try {
        await auth.signInWithEmailAndPassword(
          email: loginEmailController.text,
          password: loginPasswordController.text,
        );
        emit(LoginSuccess());
      } on FirebaseAuthException catch (e) {
        emit(LoginFailure(errCode: e.code));
      }
    }
  }

  Future<void> registerWithEmailAndPassword() async {
    if (registerFormKey.currentState!.validate()) {
      emit(RegisterLoading());
      try {
        await auth.createUserWithEmailAndPassword(
          email: loginEmailController.text,
          password: loginPasswordController.text,
        );
        emit(RegisterSuccess());
      } on FirebaseAuthException catch (e) {
        emit(RegisterFailure(errCode: e.code));
      }
    }
  }

  // Future<void> signinWithGoogle() async {
  //   emit(GoogleSigninLoading());

  //   try {
  //     final googleUser = await GoogleSignIn().signIn();

  //     final GoogleSignInAuthentication googleAuth =
  //         await googleUser!.authentication;

  //     final AuthCredential credential = GoogleAuthProvider.credential(
  //       accessToken: googleAuth.accessToken,
  //       idToken: googleAuth.idToken,
  //     );

  //     await FirebaseAuth.instance.signInWithCredential(credential);

  //     emit(GoogleSigninSuccess());
  //   } on FirebaseAuthException catch (e) {
  //     emit(GoogleSigninFailure(errMessage: e.message));
  //   }
  // }
}
