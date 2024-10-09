import 'package:cartee/presentation/styles/colors.dart';
import 'package:flutter/material.dart';

class CarteeTextTheme {
  CarteeTextTheme._();

  static TextTheme lightTextTheme = TextTheme(
    //* headline style
    headlineLarge: const TextStyle().copyWith(fontSize: 32, fontWeight: FontWeight.bold, color: secondaryColor),
    headlineMedium: const TextStyle().copyWith(fontSize: 24, fontWeight: FontWeight.w600, color: secondaryColor),
    headlineSmall: const TextStyle().copyWith(fontSize: 18, fontWeight: FontWeight.w600, color: secondaryColor),

    //* label style
    titleLarge: const TextStyle().copyWith(fontSize: 16, fontWeight: FontWeight.w600, color: secondaryColor),
    titleMedium: const TextStyle().copyWith(fontSize: 16, fontWeight: FontWeight.w500, color: secondaryColor),
    titleSmall: const TextStyle().copyWith(fontSize: 16, fontWeight: FontWeight.w400, color: secondaryColor),

    //* body style
    bodyLarge: const TextStyle().copyWith(fontSize: 14, fontWeight: FontWeight.w500, color: secondaryColor),
    bodyMedium: const TextStyle().copyWith(fontSize: 14, fontWeight: FontWeight.normal, color: secondaryColor),
    bodySmall: const TextStyle().copyWith(fontSize: 14, fontWeight: FontWeight.w500, color: secondaryColor.withOpacity(0.5)),

    //* body style
    labelLarge: const TextStyle().copyWith(fontSize: 12, fontWeight: FontWeight.normal, color: secondaryColor),
    labelMedium: const TextStyle().copyWith(fontSize: 12, fontWeight: FontWeight.normal, color: secondaryColor.withOpacity(0.5)),
  );
  static TextTheme darkTextTheme = TextTheme(
    //* headline style
    headlineLarge: const TextStyle().copyWith(fontSize: 32, fontWeight: FontWeight.bold, color: tertiaryColor),
    headlineMedium: const TextStyle().copyWith(fontSize: 24, fontWeight: FontWeight.w600, color: tertiaryColor),
    headlineSmall: const TextStyle().copyWith(fontSize: 18, fontWeight: FontWeight.w600, color: tertiaryColor),

    //* label style
    titleLarge: const TextStyle().copyWith(fontSize: 16, fontWeight: FontWeight.w600, color: tertiaryColor),
    titleMedium: const TextStyle().copyWith(fontSize: 16, fontWeight: FontWeight.w500, color: tertiaryColor),
    titleSmall: const TextStyle().copyWith(fontSize: 16, fontWeight: FontWeight.w400, color: tertiaryColor),

    //* body style
    bodyLarge: const TextStyle().copyWith(fontSize: 14, fontWeight: FontWeight.w500, color: tertiaryColor),
    bodyMedium: const TextStyle().copyWith(fontSize: 14, fontWeight: FontWeight.normal, color: tertiaryColor),
    bodySmall: const TextStyle().copyWith(fontSize: 14, fontWeight: FontWeight.w500, color: tertiaryColor.withOpacity(0.5)),

    //* body style
    labelLarge: const TextStyle().copyWith(fontSize: 12, fontWeight: FontWeight.normal, color: tertiaryColor),
    labelMedium: const TextStyle().copyWith(fontSize: 12, fontWeight: FontWeight.normal, color: tertiaryColor.withOpacity(0.5)),
  );
}
