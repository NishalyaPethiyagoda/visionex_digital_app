import 'package:flutter/material.dart';
import 'package:visionex_digital_app/theme/app_theme.dart';

import 'screens/home/home_screen.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.lightTheme,
      home: HomeScreen(),
      debugShowCheckedModeBanner: false
    );
  }
}

