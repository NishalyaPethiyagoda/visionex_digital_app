import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    fontFamily: 'Roboto ',
    textTheme: const TextTheme(
      displayLarge: TextStyle(
        color: Colors.white,
        fontSize: 36,
        fontWeight: FontWeight.w700,
        letterSpacing: -0.72,
        height: 1.0,
      ),
      bodyLarge: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.normal,
        letterSpacing: 0.0,
        height: 1.5,
        color: Colors.black,
      ),
      bodyMedium: TextStyle(
          fontSize: 20,
          letterSpacing: -0.72,
          fontWeight: FontWeight.w700,
        height: 1.5,
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
