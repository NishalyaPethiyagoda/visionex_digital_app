import 'package:flutter/material.dart';

class WelcomeCards extends StatelessWidget {
  final Color cardColor;
  final String cardIconPath;
  final String cardName;

  const WelcomeCards(
      {super.key,
      required this.cardColor,
      required this.cardIconPath,
      required this.cardName});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(4),
      width: 150,
      height: 172,
      decoration: BoxDecoration(
        color: cardColor,
        border: Border.all(),
        borderRadius: BorderRadius.circular(24),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(24),
              ),
              child: Align(
                alignment: Alignment.center,
                child: ClipOval(
                  child: Image.asset(
                    cardIconPath,
                    fit: BoxFit.cover,
                    width: 24,
                    height: 24,
                  ),
                ),
              ),
            ),
            Text(
              cardName,
              style: Theme.of(context).textTheme.bodyMedium,
              // style: const TextStyle(
              //   fontSize: 20,
              //   letterSpacing: -0.72,
              //   fontWeight: FontWeight.w700,
              //   height: 1.5,
              // ),
            ),
          ],
        ),
      ),
    );
  }
}
