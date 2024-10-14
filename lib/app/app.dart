import 'package:cartee/app/router.dart';
import 'package:cartee/logic/cubits/navigation_menu_cubit/navigation_menu_cubit.dart';
import 'package:cartee/logic/cubits/onboarding_cubit/onboarding_cubit.dart';
import 'package:cartee/presentation/screens/splash_screen.dart';
import 'package:cartee/presentation/themes/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final AppRouter _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => OnBoardingCubit(),
        ),
        BlocProvider(
          create: (context) => NavigationMenuCubit(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Cartee',
        themeMode: ThemeMode.system,
        theme: CarteeAppTheme.lightTheme,
        darkTheme: CarteeAppTheme.darkTheme,
        home: const SplashScreen(),
        onGenerateRoute: _appRouter.onGenerateRoute,
      ),
    );
  }
}
