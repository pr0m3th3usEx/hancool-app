import 'package:flutter/material.dart';
import 'package:hancool_app/config/theme/colors.dart';
import 'package:hancool_app/config/theme/text.dart';

final ButtonStyle buttonPrimary = ElevatedButton.styleFrom(
  alignment: Alignment.center,
  padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 24),
  backgroundColor: ThemeColor.camel,
  foregroundColor: ThemeColor.white,
  textStyle: const CustomTextTheme().bodyLarge?.copyWith(
    color: ThemeColor.white,
    fontFamily: 'CookieRun'
  ),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(12.0)),
  ),
);

final ButtonStyle buttonSecondary = ElevatedButton.styleFrom(
  alignment: Alignment.center,
  padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 24),
  backgroundColor: ThemeColor.spanishPink,
  foregroundColor: ThemeColor.white,
  textStyle: const CustomTextTheme().bodyLarge?.copyWith(
    color: ThemeColor.white,
    fontFamily: 'CookieRun'
  ),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(12.0)),
  ),
);

final ButtonStyle textButtonPrimary = TextButton.styleFrom(
  alignment: Alignment.center,
  foregroundColor: ThemeColor.spanishBistre,
  textStyle: const CustomTextTheme().bodyMedium?.copyWith(
    color: ThemeColor.white,
    fontFamily: 'CookieRun',
  )
);

ButtonStyle squareButton(Color btnColor) {
  return ElevatedButton.styleFrom(
    alignment: Alignment.center,
    padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 18),
    backgroundColor: btnColor,
    foregroundColor: ThemeColor.white,
      shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(5.0)),
    ),
  );
}
