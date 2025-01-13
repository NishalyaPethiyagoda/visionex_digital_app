import 'package:flutter/material.dart';

class NewOfferCard extends StatefulWidget {
  final String backgroundImage;
  final String title;
  final String price;

  const NewOfferCard(
      {super.key,
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
    final double screenHeight = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Stack(
          children: [
            Container(
              width: screenWidth - 20 * 2,
              height: screenHeight * 0.3,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  image: DecorationImage(
                      image: NetworkImage(widget.backgroundImage),
                      fit: BoxFit.cover)),
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
                          image:
                              AssetImage('lib/assets/icons/heart_icon.png'))),
                )),
                Positioned(
                right: 10,
                bottom: 10,
                child: Container(
                  height: 24,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    color: Colors.white
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 4, 10, 3),
                    child: Text('\$ ${widget.price}', style: Theme.of(context)
                              .textTheme
                              .bodySmall!
                              .copyWith(
                                  letterSpacing: -0.36,
                                  fontWeight: FontWeight.w600),),
                  ))
              )
          ],
        ),
        SizedBox(
          height: 26,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0,10,0,0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      widget.title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          letterSpacing: -0.36, fontWeight: FontWeight.w600),
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 15.00,
                        height: 15.00,
                        child: Center(
                          // Center the image vertically
                          child: Image(
                            image: AssetImage(
                                'lib/assets/icons/review_symbol_star_icon.png'),
                          ),
                        ),
                      ),
                      SizedBox(width: 4.0),
                      Center(
                        child: Text(
                          '4.9',
                          style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          letterSpacing: -0.36, fontWeight: FontWeight.w600),
                          )), // Center the text vertically
                      SizedBox(width: 4.0),
                      Center(
                          child:
                              Text(
                                '(29 Reviews)',
                                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          letterSpacing: -0.36, fontWeight: FontWeight.w400, color: Color(0xFF7E7E7E)),
                                )), // Center the text vertically
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        )
      ],
    );
  }
}
