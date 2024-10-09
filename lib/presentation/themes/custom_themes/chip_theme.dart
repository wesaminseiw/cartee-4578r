import 'package:cartee/presentation/styles/colors.dart';
import 'package:flutter/material.dart';

class CarteeChipTheme {
  CarteeChipTheme._();

  static ChipThemeData lightChipTheme = ChipThemeData(
    disabledColor: Colors.grey.withOpacity(0.4),
    labelStyle: const TextStyle(color: secondaryColor),
    selectedColor: primaryColor,
    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    checkmarkColor: tertiaryColor,
  ); // ChipThemeData

  static ChipThemeData darkChipTheme = const ChipThemeData(
    disabledColor: Colors.grey,
    labelStyle: TextStyle(color: tertiaryColor),
    selectedColor: primaryColor,
    padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    checkmarkColor: tertiaryColor,
  );
}
