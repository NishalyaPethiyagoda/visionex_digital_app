import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:visionex_digital_app/screens/search_catalog_1/search_catalog_1_screen.dart';
import 'package:visionex_digital_app/screens/search_catalog_3/search_catalog_3_screen.dart';
import 'package:visionex_digital_app/theme/app_theme.dart';

import 'screens/home/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  FirebaseFirestore.instance.settings = const Settings(persistenceEnabled: true);
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
        routes: {
          '/' : (context) => const HomeScreen(),
          '/searchCatalog1': (context) => const SearchCatalog1Screen(),
          '/searchCatalog3': (context) => const SearchCatalog3Screen(),
        },
        debugShowCheckedModeBanner: false
    );
  }
}
