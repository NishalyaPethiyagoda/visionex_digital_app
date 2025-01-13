

import 'package:flutter/material.dart';

class NewOfferCard extends StatefulWidget {
  final String backgroundImage;
  final String title;
  final String price;

  const NewOfferCard({super.key,
      required this.backgroundImage,
      required this.title,
      required this.price});

  @override
  State<NewOfferCard> createState() => _NewOfferCardState();
}

class _NewOfferCardState extends State<NewOfferCard> {
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return SizedBox(
      width: 150,
      
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                margin: const EdgeInsets.all(4),
                width: screenWidth - 20*2,
                height: 150,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    image: DecorationImage(
                        image: NetworkImage(widget.backgroundImage),
                        fit: BoxFit.cover)),
              ),
              Positioned(
                top: 20,
                right: 20,
                child: Container(
                  height: 24,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 4, 10, 3),
                    child: Image(image: AssetImage('/lib/assets/icons/heart_icon.png')),
                  ))
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(letterSpacing: -0.36, fontWeight: FontWeight.w600),
              ),
              Row(
                children: [
                  //icon start
                  Text(''),
                  Text(''),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
