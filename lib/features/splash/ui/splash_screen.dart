import 'package:books_app/core/theme/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../onboarding/ui/onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(
      const Duration(seconds: 2),
      () {
        Navigator.push(
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
            pageBuilder: (BuildContext context, Animation<double> animation,
                Animation<double> secondaryAnimation) {
              return const OnboardingScreen();
            },
          ),
        );
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.leanBack);

    return Scaffold(
      body: Center(
        child: Image.asset(AppImages.logo), // Your logo asset here
      ),
    );
  }
}
