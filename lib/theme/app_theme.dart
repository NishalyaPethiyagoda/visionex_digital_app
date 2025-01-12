import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    fontFamily: 'Roboto Flex',
    textTheme: const TextTheme(
      displayLarge: TextStyle(
        color: Colors.white,
        fontSize: 36,
        fontWeight: FontWeight.w700,
        letterSpacing: -0.72,
        height: 1.0,
      ),
      displayMedium: TextStyle(
        color: Colors.black,
        fontSize: 20,
        fontWeight: FontWeight.w700,
        letterSpacing: -0.72,
        height: 1.0,
      ),
      displaySmall: TextStyle(
        color: Colors.black,
        fontSize: 18,
        fontWeight: FontWeight.w700,
        letterSpacing: -0.72,
        height: 1.0,
      ),
      bodyLarge: TextStyle(
        color: Colors.black,
        fontSize: 16,
        letterSpacing: -0.72,
        fontWeight: FontWeight.w700,
        height: 1.0,
      ),
      bodyMedium: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.normal,
        letterSpacing: -0.72,
        height: 1.5,
        color: Colors.black,
      ),
      bodySmall: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.normal,
        letterSpacing: -0.72,
        height: 1.5,
        color: Colors.black,
      ),  
    ),
    scaffoldBackgroundColor: Colors.white,
  );

  // static ThemeData darkTheme = ThemeData(
  //   // Example of a dark theme (optional)
  //   fontFamily: 'Roboto',
  //   textTheme: const TextTheme(
  //     displayLarge: TextStyle(
  //       fontSize: 36,
  //       fontWeight: FontWeight.w700,
  //       letterSpacing: -0.72,
  //       height: 1.0,
  //       color: Colors.white,
  //     ),
  //     bodyLarge: TextStyle(
  //       fontSize: 16,
  //       fontWeight: FontWeight.normal,
  //       letterSpacing: 0.0,
  //       height: 1.5,
  //       color: Colors.white, // Dark mode body text
  //     ),
  //   ),
  //   primarySwatch: Colors.teal,
  //   scaffoldBackgroundColor: Colors.black,
  // );
}
