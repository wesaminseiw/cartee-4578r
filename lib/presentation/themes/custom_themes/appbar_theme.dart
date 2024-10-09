import 'package:cartee/presentation/styles/colors.dart';
import 'package:flutter/material.dart';

class CarteeAppBarTheme {
  CarteeAppBarTheme._();

  static const lightAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: CarteeColors.secondaryColor,
    surfaceTintColor: CarteeColors.secondaryColor,
    iconTheme: IconThemeData(color: CarteeColors.secondaryColor, size: 24),
    actionsIconTheme: IconThemeData(color: CarteeColors.secondaryColor, size: 24),
    titleTextStyle: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600, color: CarteeColors.secondaryColor),
  );
  static const darkAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: CarteeColors.secondaryColor,
    surfaceTintColor: CarteeColors.secondaryColor,
    iconTheme: IconThemeData(color: CarteeColors.secondaryColor, size: 24),
    actionsIconTheme: IconThemeData(color: CarteeColors.tertiaryColor, size: 24),
    titleTextStyle: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600, color: CarteeColors.tertiaryColor),
  );
}
