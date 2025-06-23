import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyTheme {
  static const Color kBackgroundColor = Color(0xFFFFFFFF);
  static const Color kPrimaryColor = Color(0xFF41A2D8);
  static const Color kErrorColor = Color(0xFFFF0C0C);
  static const Color kSuccessColor = Color(0xFF04FF00);
  static const Color kTextColor = Color(0xFF000000); // Fixed
  static const Color kCardColor = Color(0xFF2A2A2A);

  static final ThemeData customTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: kBackgroundColor,
    colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: kPrimaryColor,
      onPrimary: Colors.white,
      secondary: kSuccessColor,
      onSecondary: Colors.white,
      surface: kBackgroundColor,
      onSurface: kTextColor,
      error: kErrorColor,
      onError: Colors.white,
      primaryContainer: kPrimaryColor,
      secondaryContainer: kCardColor,
    ),
    iconTheme: const IconThemeData(color: kTextColor),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(color: kTextColor, fontFamily: 'Cairo'),
      bodyMedium: TextStyle(color: kTextColor, fontFamily: 'Cairo'),
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
      fillColor: Colors.white,
      hintStyle: const TextStyle(color: kTextColor),
      labelStyle: const TextStyle(color: kTextColor),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: const BorderSide(color: Colors.transparent),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: const BorderSide(color: kPrimaryColor),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: const BorderSide(color: kPrimaryColor),
      ),
    ),
  );
}

extension ThemeColor on BuildContext {
  ColorScheme get colorScheme => Theme.of(this).colorScheme;
}
