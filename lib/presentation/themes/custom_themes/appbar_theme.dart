import 'package:cartee/presentation/styles/colors.dart';
import 'package:flutter/material.dart';

class CarteeAppBarTheme {
  CarteeAppBarTheme._();

  static const lightAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: secondaryColor,
    surfaceTintColor: secondaryColor,
    iconTheme: IconThemeData(color: secondaryColor, size: 24),
    actionsIconTheme: IconThemeData(color: secondaryColor, size: 24),
    titleTextStyle: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600, color: secondaryColor),
  );
  static const darkAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: secondaryColor,
    surfaceTintColor: secondaryColor,
    iconTheme: IconThemeData(color: secondaryColor, size: 24),
    actionsIconTheme: IconThemeData(color: tertiaryColor, size: 24),
    titleTextStyle: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600, color: tertiaryColor),
  );
}
