import 'package:flutter/material.dart';
import 'package:visionex_digital_app/models/property_model.dart';

class PopluarRentOfferCard extends StatefulWidget {
  final PropertyModel property;

  const PopluarRentOfferCard({super.key, required this.property});

  @override
  State<PopluarRentOfferCard> createState() => _PopluarRentOfferCardState();
}

class _PopluarRentOfferCardState extends State<PopluarRentOfferCard> {
  @override
  Widget build(BuildContext context) {
    // final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    return SizedBox(
      height: screenHeight * 0.35,
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: screenHeight * 0.25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  image: DecorationImage(
                      image: NetworkImage(widget.property.imageUrl),
                      fit: BoxFit.cover),
                ),
              ),
              Positioned(
                top: 20,
                right: 20,
                child: GestureDetector(
                  onTap: () {},
                  child: const SizedBox(
                    height: 24,
                    width: 24,
                    child: Image(
                      image: AssetImage('lib/assets/icons/heart_icon.png'),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 10,
                left: 10,
                child: Row(children: [
                  Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white),
                      height: 24,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB( 10.0, 4, 10.0, 3.0),
                        child: Text(
                          '${widget.property.numberOfBeds} Beds',
                          style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            letterSpacing: -0.36,
                            fontWeight: FontWeight.w600
                          ),
                          ),
                      ),),
                  const SizedBox(width: 4,),
                  Container(
                      height: 24,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB( 10.0, 4, 10.0, 3.0),
                        child: Text(
                            '${widget.property.numberOfBathrooms} Bathroom',
                          style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            letterSpacing: -0.36,
                            fontWeight: FontWeight.w600
                        ),),
                      )),
                ]),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 10.0, 0, 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0.0, 0, 5.0),
                        child: Text(
                          widget.property.title,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(
                                  letterSpacing: -0.36,
                                  fontWeight: FontWeight.w600),
                        ),
                      ),
                      Text(
                        widget.property.location,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            letterSpacing: -0.36, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 80,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      '\$ ${widget.property.price}',
                      style: Theme.of(context).textTheme.displayMedium!.copyWith(
                            fontSize: 22, fontWeight: FontWeight.w700),
                      ),
                    Text(
                      ' /mo',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            letterSpacing: -0.36, fontWeight: FontWeight.w600),
                      ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
