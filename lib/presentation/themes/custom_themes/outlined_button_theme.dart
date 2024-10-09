import 'package:cartee/presentation/styles/colors.dart';
import 'package:flutter/material.dart';

class CarteeOutlinedButtonTheme {
  CarteeOutlinedButtonTheme._();

  static final lightOutlinedButtonTheme = OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
    elevation: 0,
    foregroundColor: secondaryColor,
    side: const BorderSide(color: primaryColor),
    textStyle: const TextStyle(fontSize: 16, color: secondaryColor, fontWeight: FontWeight.w600),
    padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
  ));

  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
    foregroundColor: tertiaryColor,
    side: const BorderSide(color: primaryColor),
    textStyle: const TextStyle(fontSize: 16, color: tertiaryColor, fontWeight: FontWeight.w600),
    padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
  ));
}
