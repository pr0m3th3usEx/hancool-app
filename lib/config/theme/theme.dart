import 'package:flutter/material.dart';
import 'package:hancool_app/config/theme/colors.dart';

class CustomTheme {
  
  static ThemeData lightTheme = ThemeData(
    colorScheme: CustomColorScheme.light(),
  );
  static ThemeData darkTheme = ThemeData(
    colorScheme: CustomColorScheme.dark(),
  );
}

