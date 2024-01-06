import 'package:flutter/material.dart';
import 'package:flutter_zimpligital_siravit/core/constants/constants.dart';

ThemeData defaultTheme(BuildContext context) {
  return ThemeData(
    fontFamily: 'Promp',
    useMaterial3: true,
    disabledColor: ColorPalette.disable,
    colorScheme: ColorScheme.fromSeed(
      seedColor: ColorPalette.colorPrimary,
      background: Colors.white,
      surface: ColorPalette.colorPrimary,
      error: ColorPalette.alert,
    ),
    scaffoldBackgroundColor: Colors.white,
    iconTheme: const IconThemeData(
      color: ColorPalette.textPrimary,
    ),
    textTheme: const TextTheme(
      headlineLarge: TextStyleSet.headline900,
      headlineMedium: TextStyleSet.headline700,
      headlineSmall: TextStyleSet.headline500,
      bodyLarge: TextStyleSet.paragraph400,
      bodyMedium: TextStyleSet.paragraph300,
      bodySmall: TextStyleSet.paragraph200,
    ),
  );
}
