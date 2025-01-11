import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:visionex_digital_app/theme/app_theme.dart';

import 'screens/home/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // if (kIsWeb) {
  //   Firebase.initializeApp(
  //       options: const FirebaseOptions(
  //           apiKey: "AIzaSyCyJiYd6KyEzjb5Si6oiSaiWVvsjAzxtJQ",
  //           authDomain: "visionexdigital.firebaseapp.com",
  //           projectId: "visionexdigital",
  //           storageBucket: "visionexdigital.firebasestorage.app",
  //           messagingSenderId: "588090081851",
  //           appId: "1:588090081851:web:927dcbb312b3cf529b921e"));
  // } else {
  await Firebase.initializeApp();
  // }

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
        home: const HomeScreen(),
        debugShowCheckedModeBanner: false
    );
  }
}
