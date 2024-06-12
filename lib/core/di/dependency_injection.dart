import 'package:books_app/core/helpers/cache_helper.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;

Future<void> setupGetIt() async {
  getIt.registerSingleton<CacheHelper>(CacheHelper());
  getIt.registerSingleton<FirebaseAuth>(FirebaseAuth.instance);
}
