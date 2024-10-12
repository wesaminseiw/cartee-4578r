import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:cartee/presentation/screens/onboarding_screen.dart';
import 'package:flutter/material.dart';

import '../styles/colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Image.asset(
            Theme.of(context).brightness == Brightness.light ? 'assets/logos/cartee-logos/logo-light.png' : 'assets/logos/cartee-logos/logo-dark.png',
            fit: BoxFit.cover,
          ),
        ),
      ),
      backgroundColor: Theme.of(context).brightness == Brightness.light ? CarteeColors.tertiaryColor : CarteeColors.secondaryColor,
      duration: 3000,
      splashTransition: SplashTransition.fadeTransition,
      nextScreen: const OnBoardingScreen(),
    );
  }
}
