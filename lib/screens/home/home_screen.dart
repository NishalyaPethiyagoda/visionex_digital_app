import 'package:flutter/material.dart';
import 'package:visionex_digital_app/widgets/bottom_button.dart';
import 'package:visionex_digital_app/widgets/welcome_cards.dart';

const List<WelcomeCards> cards = [
  WelcomeCards(
    cardColor: Color(0xFFF5E1C2),
    cardIconPath: "lib/assets/icons/rent_icon.png",
    cardName: "Rent",
  ),
  WelcomeCards(
      cardColor: Color(0xFFF0F298),
      cardIconPath: "lib/assets/icons/buy_icon.png",
      cardName: "Buy"),
  WelcomeCards(
      cardColor: Color(0xFFC6E7BE),
      cardIconPath: "lib/assets/icons/buy_icon.png",
      cardName: "S...."),
];

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'lib/assets/images/house_image_1.png',
              fit: BoxFit.cover,
            ),
          ),
          Positioned.fill(
            child: Container(
              color: Colors.black.withOpacity(0.74),
            ),
          ),
          Positioned(
            top: 90,
            left: 20,
            right: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 96, // Set size for the circular button
                  height: 21,
                  child: Image.asset(
                    'lib/assets/images/homzes.png', // Path to the top-left image
                  ),
                ),
                ClipOval(
                  child: Image.asset(
                    'lib/assets/icons/big_icon_button.png', // Path to your circular icon
                    fit: BoxFit.cover,
                    width: 50, // Set size for the circular button
                    height: 50,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 45,
            left: 15,
            right: 15,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Find the best \nplace for you",
                  style: Theme.of(context).textTheme.displayLarge,
                  textAlign: TextAlign.center, // Center the text
                ),
                const SizedBox(height: 60),
                SizedBox(
                  height: 172,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return cards[index];
                    },
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  height: 48,
                  width: double
                      .infinity, // This ensures it takes up the full available width
                  child: AnimatedGradientButton(
                    buttonText: 'Create an account',
                    onPressed: () {
                      // Navigator.pushNamed(context, routeName);
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
