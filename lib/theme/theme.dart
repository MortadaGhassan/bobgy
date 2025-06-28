import 'package:flutter/material.dart';

class MyTheme {
  static const Color kBackgroundColor = Color(0xFFFFFFFF);
  static const Color kPrimaryColor = Color(0xFF41A2D8);
  static const Color kTextColor = Color(0xFF000000);
  static const Color kCardColor = Color(0xFF2A2A2A);
  static const Color kFillColor = Color(0xfff7f9fc);
  static const Color kShadeColor = Color(0xffcce5f4);
  static const Color kErrorColor = Color(0xFFF24545);
  static const Color kSuccessColor = Color(0xFF6ee082);
  static const Color kWaitingColor = Color(0xFFFdc838);
  static const Color kReviewColor = Color(0xFFFd7b32);

  static final ThemeData customTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: kBackgroundColor,
    colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: kPrimaryColor,
      onPrimary: Colors.white,
      secondary: kSuccessColor,
      onSecondary: Colors.white,
      surface: kFillColor,
      onSurface: kTextColor,
      error: kErrorColor,
      onError: kWaitingColor,
      secondaryFixed: kReviewColor,
      primaryContainer: kPrimaryColor,
      secondaryContainer: kCardColor,
      shadow: kShadeColor,
    ),
    iconTheme: const IconThemeData(color: kTextColor),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(color: kTextColor, fontFamily: 'Cairo'),
      bodyMedium: TextStyle(
        fontWeight: FontWeight.w400,

        color: kTextColor,
        fontFamily: 'Cairo',
        fontSize: 16,
      ),
      labelLarge: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w700,
        color: Colors.white,
        fontFamily: 'Cairo',
      ),
      labelMedium: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w500,
        color: Colors.white,
        fontFamily: 'Cairo',
      ),
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: kPrimaryColor,
      elevation: 0,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            side: BorderSide(color: kPrimaryColor),
          ),
        ),
        elevation: WidgetStateProperty.all(10),
        fixedSize: WidgetStateProperty.all(Size(240, 55)),
        backgroundColor: WidgetStateProperty.all(kPrimaryColor),
        foregroundColor: WidgetStateProperty.all(Colors.white),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      iconColor: kPrimaryColor,
      filled: true,
      fillColor: kFillColor,
      hintStyle: const TextStyle(color: kTextColor),
      labelStyle: const TextStyle(color: kTextColor),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: const BorderSide(color: Colors.transparent),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: const BorderSide(color: kBackgroundColor),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: const BorderSide(color: kPrimaryColor),
      ),
    ),
    switchTheme: SwitchThemeData(
      trackOutlineColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return Colors.white;
        }
        return Colors.grey[200];
      }),
    ),
  );
}

extension ThemeColor on BuildContext {
  ColorScheme get colorScheme => Theme.of(this).colorScheme;
}
