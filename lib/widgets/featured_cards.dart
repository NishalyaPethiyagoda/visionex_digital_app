import 'package:flutter/material.dart';

class FeaturedCard extends StatelessWidget {
  final String backgroundImage;
  final String title;
  final String price;

  const FeaturedCard(
      {super.key,
      required this.backgroundImage,
      required this.title,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,

      child: Column(
        children: [
          Stack(
            children: [
              Container(
                margin: const EdgeInsets.all(4),
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    image: DecorationImage(
                        image: NetworkImage(backgroundImage),
                        fit: BoxFit.cover)),
              ),
              Positioned(
                right: 20,
                bottom: 20,
                child: Container(
                  height: 24,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    color: Colors.white
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 4, 10, 3),
                    child: Text('\$ $price'),
                  ))
              )
            ],
          ),
          Text(
            title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(letterSpacing: -0.36, fontWeight: FontWeight.w600),
          )
        ],
      ),
    );
  }
}
