import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          centerTitle: false,
          title: const Image(
            image: AssetImage("lib/assets/images/homzes.png"),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: ClipOval(
                child: Image.asset("lib/assets/icons/big_icon_button.png", 
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ]),
    );
  }
}
