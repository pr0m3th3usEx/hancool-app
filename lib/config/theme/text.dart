import 'package:flutter/material.dart';

class CustomTextTheme extends TextTheme {
  const CustomTextTheme(): super(
    displayLarge: const TextStyle(
      fontSize: 57,
      fontWeight: FontWeight.normal,
    ),
    displayMedium: const TextStyle(
      fontSize: 45,
      fontWeight: FontWeight.normal,
    ),
    displaySmall: const TextStyle(
      fontSize: 36,
      fontWeight: FontWeight.normal,
    ),
    headlineLarge: const TextStyle(
      fontSize: 32,
      fontWeight: FontWeight.normal,
    ),
    headlineMedium: const TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.normal,
    ),
    headlineSmall: const TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.normal,
    ),
    titleLarge: const TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.w600,
    ),
    titleMedium: const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
    ),
    titleSmall: const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w600,
    ),
    labelLarge: const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w600,
    ),
    labelMedium: const TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w600,
    ),
    labelSmall: const TextStyle(
      fontSize: 11,
      fontWeight: FontWeight.w600,
    ),
    bodyLarge: const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.normal,
    ),
    bodyMedium: const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.normal,
    ),
    bodySmall: const TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.normal,
    ),
  );
}