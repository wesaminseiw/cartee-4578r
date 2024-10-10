import 'package:cartee/presentation/screens/splash_screen.dart';
import 'package:cartee/presentation/themes/themes.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cartee',
      themeMode: ThemeMode.system,
      theme: CarteeAppTheme.lightTheme,
      darkTheme: CarteeAppTheme.darkTheme,
      home: const SplashScreen(),
    );
  }
}
