import 'package:books_app/bloc_observer.dart';
import 'package:books_app/books_app.dart';
import 'package:books_app/core/app_constants.dart';
import 'package:books_app/core/di/dependency_injection.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  await Hive.initFlutter();

  await Hive.openBox<bool>(AppConstants.firstScreenBox);

  await setupGetIt();

  Bloc.observer = CustomBlocObserver();

  runApp(const BookyApp());
}
