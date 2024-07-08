import 'package:books_app/core/di/dependency_injection.dart';
import 'package:books_app/core/helpers/cache_helper.dart';
import 'package:books_app/core/theme/app_images.dart';
import 'package:books_app/features/auth/ui/auth_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../home/ui/home_screen.dart';
import '../../onboarding/ui/onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    Future.delayed(
      const Duration(seconds: 2),
      () {
        SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
        Navigator.pushReplacement(
          context,
          PageRouteBuilder(
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              return ScaleTransition(
                alignment: Alignment.center,
                scale: Tween<double>(begin: 0.1, end: 1).animate(
                  CurvedAnimation(
                    parent: animation,
                    curve: Curves.fastLinearToSlowEaseIn,
                  ),
                ),
                child: child,
              );
            },
            transitionDuration: const Duration(seconds: 2),
            pageBuilder: (
              BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
            ) {
              if (getIt.get<FirebaseAuth>().currentUser != null) {
                return const HomeScreen();
              } else {
                if (getIt.get<CacheHelper>().isFirstOpen()) {
                  return const OnboardingScreen();
                } else {
                  return const AuthScreen();
                }
              }
            },
          ),
        );
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(AppImages.logo),
      ),
    );
  }
}
