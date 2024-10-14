import 'package:cartee/presentation/screens/auth_screens/signup_screen.dart';
import 'package:cartee/presentation/screens/auth_screens/success_screen.dart';
import 'package:cartee/presentation/screens/auth_screens/verify_email_screen.dart';
import 'package:cartee/presentation/screens/home_screen.dart';
import 'package:cartee/presentation/screens/auth_screens/login_screen.dart';
import 'package:cartee/presentation/screens/onboarding_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/home':
        return MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        );
      case '/onboarding':
        return MaterialPageRoute(
          builder: (context) => const OnBoardingScreen(),
        );

      case '/login':
        return MaterialPageRoute(
          builder: (context) => const LoginScreen(),
        );

      case '/signup':
        return MaterialPageRoute(
          builder: (context) => const SignUpScreen(),
        );
      case '/verify':
        return MaterialPageRoute(
          builder: (context) => const VerifyEmailScreen(),
        );
      case '/success':
        return MaterialPageRoute(
          builder: (context) => const SuccessScreen(),
        );
      // case '/login':
      //   return MaterialPageRoute(
      //     builder: (context) => const LoginScreen(),
      //   );
      // case '/register':
      //   return MaterialPageRoute(
      //     builder: (context) => const RegisterScreen(),
      //   );
      // case '/verify':
      //   return MaterialPageRoute(
      //     builder: (context) => const VerifyEmailScreen(),
      //   );
      default:
        return MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        );
    }
  }
}
