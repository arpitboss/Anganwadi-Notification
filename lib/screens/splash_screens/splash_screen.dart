import 'package:anganwadi_notification_app/screens/splash_screens/onboarding_screen.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splashIconSize: 200,
      splash: Image.asset(
        'assets/ANGANWADI-LOGO.jpg',
      ),
      nextScreen: const OnBoardingScreen(),
      splashTransition: SplashTransition.scaleTransition,
      backgroundColor: const Color(0xFFFFFFFF),
      duration: 2000,
    );
  }
}
