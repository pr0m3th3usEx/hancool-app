import 'package:flutter/material.dart';

class ThemeColor {
  static const spanishPink = Color.fromRGBO(240, 183, 185, 1);
  static const mistyRose = Color.fromRGBO(253, 226, 226, 1);
  static const peachYellow = Color.fromRGBO(253, 230, 169, 1);
  static const lotion = Color.fromRGBO(250, 250, 250, 1);
  static const antiFlashWhite = Color.fromRGBO(243, 242, 242, 1);
  static const darkGray = Color.fromRGBO(169, 169, 169, 1);
  static const lemonMeringue = Color.fromRGBO(241, 228, 195, 1);
  static const camel = Color.fromRGBO(198, 169, 105, 1);
  static const raisinBlack = Color.fromRGBO(35, 31, 32, 1);
  static const spanishBistre = Color.fromRGBO(125, 122, 48, 1);

  // Predefined Packs Primary Colors

  static const maize = Color.fromRGBO(240, 193, 89, 1);
  static const majorelleBlue = Color.fromRGBO(83, 89, 231, 1);
  static const majorellePurlple = Color.fromRGBO(116, 75, 232, 1);
  static const lightDeepPink = Color.fromRGBO(231, 83, 199, 1);
  static const eucalyptus = Color.fromRGBO(83, 231, 160, 1); // Grade Sticker A
  static const seaSerpent = Color.fromRGBO(83, 213, 231, 1); // Grade Sticker B
  static const arylideYellow =
      Color.fromRGBO(238, 210, 110, 1); // Grade Sticker C
  static const bigFootFeet = Color.fromRGBO(231, 145, 83, 1); // Grade Sticker D
  static const fireOpal = Color.fromRGBO(231, 83, 83, 1); // Grade Sticker E

  // Quizz Colors

  static const oldLace = Color.fromRGBO(255, 247, 226, 1);
  static const apple = Color.fromRGBO(200, 230, 194, 1);
  static const tulip = Color.fromRGBO(255, 139, 139, 1);

  static const Gradient mainGradient = LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: <Color>[spanishPink, mistyRose, peachYellow],
      stops: [0.0, 0.286, 1.0]);

  static const Gradient secondaryGradient = LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: <Color>[spanishPink, mistyRose, peachYellow],
      stops: [0.0, 0.70, 1.0]);
}

class CustomColorScheme extends ColorScheme {
  // Main colors

  CustomColorScheme.light()
      : super(
          // brightness: Specifies whether the color scheme should be light or dark.
          brightness: Brightness.light,
          // background: The overall background color of your application.
          background: ThemeColor.lotion,
          // onBackground: The color used for text and icons that appear on top of the background color.
          onBackground: ThemeColor.raisinBlack,
          // primary: The primary color of your application. It influences elements like the app bar, buttons, and other primary components.
          primary: ThemeColor.spanishPink,
          // onPrimary: The color used for text and icons that appear on top of the primary color.
          onPrimary: ThemeColor.lotion,
          // primaryContainer: This color is applied to containers (e.g., cards) that use the primary color as their background.
          primaryContainer: ThemeColor.mistyRose,
          // onPrimaryContainer: The color used for text and icons that appear on top of containers with the primary color background.
          onPrimaryContainer: ThemeColor.lotion,
          // secondary: The secondary color used to accent elements in your application, providing visual interest and distinction from primary components.
          secondary: ThemeColor.camel,
          // onSecondary: The color used for text and icons that appear on top of the secondary color.
          onSecondary: ThemeColor.lotion,
          // error: Color used to indicate errors or issues within your application.
          error: ThemeColor.fireOpal,
          // onError: The color used for text and icons that appear on top of the error color.
          onError: ThemeColor.lotion,
          // surface: Color representing the surface color of components like cards, dialogs, etc.
          surface: ThemeColor.lotion,
          // onSurface: The color used for text and icons that appear on top of the surface color.
          onSurface: ThemeColor.raisinBlack,
          // tertiary: Additional color that can be used to further distinguish UI elements.
          tertiary: ThemeColor.maize,
          // onTertiary: The color used for text and icons that appear on top of the tertiary color.
          onTertiary: ThemeColor.raisinBlack,
          // tertiaryContainer: This color is applied to containers (e.g., cards) that use the tertiary color as their background.
          tertiaryContainer: ThemeColor.peachYellow,
          // onTertiaryContainer: The color used for text and icons that appear on top of containers with the tertiary color background.
          onTertiaryContainer: ThemeColor.lotion,
          // outline: Color used for outlining elements, such as borders.
          outline: ThemeColor.antiFlashWhite,
          // outlineVariant: Variant of the outline color for specific use cases.
          outlineVariant: ThemeColor.camel,
          // shadow: Color for shadows cast by UI elements.
          shadow: OpacityColor.of(ThemeColor.antiFlashWhite, 0.25),
        );

  // TODO: Dark Theme
  CustomColorScheme.dark()
      : super(
        // brightness: Specifies whether the color scheme should be light or dark.
        brightness: Brightness.light,
        // background: The overall background color of your application.
        background: ThemeColor.lotion,
        // onBackground: The color used for text and icons that appear on top of the background color.
        onBackground: ThemeColor.raisinBlack,
        // primary: The primary color of your application. It influences elements like the app bar, buttons, and other primary components.
        primary: ThemeColor.spanishPink,
        // onPrimary: The color used for text and icons that appear on top of the primary color.
        onPrimary: ThemeColor.lotion,
        // primaryContainer: This color is applied to containers (e.g., cards) that use the primary color as their background.
        primaryContainer: ThemeColor.mistyRose,
        // onPrimaryContainer: The color used for text and icons that appear on top of containers with the primary color background.
        onPrimaryContainer: ThemeColor.lotion,
        // secondary: The secondary color used to accent elements in your application, providing visual interest and distinction from primary components.
        secondary: ThemeColor.camel,
        // onSecondary: The color used for text and icons that appear on top of the secondary color.
        onSecondary: ThemeColor.lotion,
        // error: Color used to indicate errors or issues within your application.
        error: ThemeColor.fireOpal,
        // onError: The color used for text and icons that appear on top of the error color.
        onError: ThemeColor.lotion,
        // surface: Color representing the surface color of components like cards, dialogs, etc.
        surface: ThemeColor.lotion,
        // onSurface: The color used for text and icons that appear on top of the surface color.
        onSurface: ThemeColor.raisinBlack,
        // tertiary: Additional color that can be used to further distinguish UI elements.
        tertiary: ThemeColor.maize,
        // onTertiary: The color used for text and icons that appear on top of the tertiary color.
        onTertiary: ThemeColor.raisinBlack,
        // tertiaryContainer: This color is applied to containers (e.g., cards) that use the tertiary color as their background.
        tertiaryContainer: ThemeColor.peachYellow,
        // onTertiaryContainer: The color used for text and icons that appear on top of containers with the tertiary color background.
        onTertiaryContainer: ThemeColor.lotion,
        // outline: Color used for outlining elements, such as borders.
        outline: ThemeColor.antiFlashWhite,
        // outlineVariant: Variant of the outline color for specific use cases.
        outlineVariant: ThemeColor.camel,
        // shadow: Color for shadows cast by UI elements.
        shadow: OpacityColor.of(ThemeColor.antiFlashWhite, 0.25),
      );
}

class OpacityColor extends Color {
  OpacityColor.of(Color originalColor, double opacity)
      : super.fromRGBO(originalColor.red, originalColor.green,
            originalColor.blue, opacity);
}
