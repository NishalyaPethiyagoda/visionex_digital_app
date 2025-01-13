import 'package:flutter/material.dart';

import '../../models/property_model.dart';
import '../../widgets/popluar_rent_offer_card.dart';

class SearchCatalog3Screen extends StatefulWidget {
  final List<PropertyModel> initial_property_list;

  const SearchCatalog3Screen({super.key, required this.initial_property_list});

  @override
  State<SearchCatalog3Screen> createState() => _SearchCatalog3ScreenState();
}

class _SearchCatalog3ScreenState extends State<SearchCatalog3Screen> {
  TextEditingController searchController = TextEditingController();
  List<PropertyModel> properties = [];

  @override
  void initState() {
    properties = widget.initial_property_list;
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    searchController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double headerCardHeight = screenHeight * 0.17; // 196 px
    final double spacingHeight1 = screenHeight * 0.0235; // 20px

    return Scaffold(
      body: Stack(
        children:[
          SizedBox(
            height: screenHeight,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
              child: Column(
                children:[
                  SizedBox(
                    height: headerCardHeight +
                        spacingHeight1, // avoid header card space
                  ),
                  Center(
                    child: Text(
                      "Popular rent offers",
                      style: Theme.of(context).textTheme.displaySmall,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  // Use Expanded only around the ListView
                  Expanded(
                    child: ListView.builder(
                      padding: const EdgeInsets.fromLTRB(0, 5, 0, 10),
                      scrollDirection: Axis.vertical,
                      itemCount: properties.length,
                      itemBuilder: (context, index) {
                        return PopluarRentOfferCard(
                           property: properties[index],
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            child: Container(
              height: headerCardHeight,
              decoration: const BoxDecoration(
                  color: Color(0xFFC6E7BE),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30))),
              child: Padding(
                padding: EdgeInsets.fromLTRB(
                    20.0, (headerCardHeight * 0.5), 20.0, 20.0),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: CircleAvatar(
                        radius: 25, 
                        backgroundColor: const Color(0xFF282828),
                        child: Image.asset(
                          'lib/assets/icons/menu_icon.png',
                          width: 24, 
                          height: 24, 
                          fit: BoxFit
                              .contain, 
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 2.0, horizontal: 20.0),
                          child: TextField(
                              controller: searchController,
                              decoration: const InputDecoration(
                                  hintText: 'Search',
                                  border: InputBorder.none,
                                  prefixIcon: Icon(
                                    Icons.search,
                                    size: 24,
                                  ))),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
