import 'package:cartee/presentation/styles/colors.dart';
import 'package:flutter/material.dart';

class CarteeNavBarTheme {
  CarteeNavBarTheme._();

  static NavigationBarThemeData lightNavBarTheme = const NavigationBarThemeData(
    height: 80,
    elevation: 0,
    backgroundColor: CarteeColors.tertiaryColor,
  );

  static NavigationBarThemeData darkNavBarTheme = const NavigationBarThemeData(
    height: 80,
    elevation: 0,
    backgroundColor: CarteeColors.secondaryColor,
  );
}
