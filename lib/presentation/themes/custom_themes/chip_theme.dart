import 'package:cartee/presentation/styles/colors.dart';
import 'package:flutter/material.dart';

class CarteeChipTheme {
  CarteeChipTheme._();

  static ChipThemeData lightChipTheme = ChipThemeData(
    disabledColor: Colors.grey.withOpacity(0.4),
    labelStyle: const TextStyle(color: CarteeColors.secondaryColor),
    selectedColor: CarteeColors.primaryColor,
    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    checkmarkColor: CarteeColors.tertiaryColor,
  ); // ChipThemeData

  static ChipThemeData darkChipTheme = const ChipThemeData(
    disabledColor: Colors.grey,
    labelStyle: TextStyle(color: CarteeColors.tertiaryColor),
    selectedColor: CarteeColors.primaryColor,
    padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    checkmarkColor: CarteeColors.tertiaryColor,
  );
}
