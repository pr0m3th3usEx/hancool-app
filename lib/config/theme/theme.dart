import 'package:flutter/material.dart';
import 'package:hancool_app/config/theme/colors.dart';
import 'package:hancool_app/config/theme/text.dart';

class CustomTheme {
  
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    colorScheme: CustomColorScheme.light(),
    textTheme: const CustomTextTheme(),
    fontFamily: 'ReadexPro',
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    colorScheme: CustomColorScheme.dark(),
    textTheme: const CustomTextTheme(),
  );
}

