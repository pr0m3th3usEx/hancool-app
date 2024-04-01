import 'package:flutter/material.dart';
import 'package:hancool_app/config/theme/colors.dart';

final BoxShadow condensedShadow = BoxShadow(
  color: OpacityColor.of(ThemeColor.antiFlashWhite, 0.25),
  offset: const Offset(0, 2),
  spreadRadius: 0,
  blurRadius: 4,
);

final BoxShadow baseShadow = BoxShadow(
  color: OpacityColor.of(ThemeColor.brightGray, 0.25),
  offset: const Offset(0, 4),
  spreadRadius: 0,
  blurRadius: 4,
);
