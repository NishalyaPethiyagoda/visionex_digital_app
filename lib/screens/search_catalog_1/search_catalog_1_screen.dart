import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:visionex_digital_app/models/property_model.dart';
import 'package:visionex_digital_app/screens/search_catalog_1/bloc/search_catalog_1_bloc.dart';
import 'package:visionex_digital_app/screens/search_catalog_1/repository/search_catalog_1_repo.dart';

import '../../widgets/custom_popup.dart';
import '../../widgets/featured_cards.dart';
import '../../widgets/new_offer_card.dart';
import '../search_catalog_3/search_catalog_3_screen.dart';
import 'bloc/search_catalog_1_event.dart';
import 'bloc/search_catalog_1_state.dart';

class SearchCatalog1Screen extends StatefulWidget {
  const SearchCatalog1Screen({super.key});

  @override
  State<SearchCatalog1Screen> createState() => _SearchCatalog1ScreenState();
}

class _SearchCatalog1ScreenState extends State<SearchCatalog1Screen> {
  TextEditingController searchController = TextEditingController();
  List<PropertyModel> properties = [];

  @override
  void dispose() {
    super.dispose();
    searchController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double headerCardHeight = screenHeight * 0.23; // 196 px
    final double spacingHeight1 = screenHeight * 0.0235; // 20px

    return BlocProvider(
      create: (context) => SearchCatalog1Bloc(SearchCatalog1Repo())
        ..add(SearchCatalog1GetDataEvent()),
      child: BlocListener<SearchCatalog1Bloc, SearchCatalog1State>(
        listener: (context, state) {
          if (state is SearchCatalogLoadedState) {
            setState(() {
              properties = state.properties;
            });
          } else if (state is SearchCatalogErrorState) {
            showCustomPopup(
                context: context,
                titleText: "System Error",
                text: "Try again later",
                buttonCancelText: "Cancel");
          }
        },
        child: Scaffold(
          body: Stack(
            children: [
              BlocBuilder<SearchCatalog1Bloc, SearchCatalog1State>(
                builder: (context, state) {
                  if (state is SearchCatalogLoadedState) {
                    return SizedBox(
                      height: screenHeight,
                      child: Column(
                        children: [
                          SizedBox(
                            height: headerCardHeight + spacingHeight1, // avoid header card space
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 0),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Featured",
                                        style: Theme.of(context)
                                            .textTheme
                                            .displaySmall,
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                            Navigator.push(
                                                context, 
                                                MaterialPageRoute(
                                                  builder: (context) => SearchCatalog3Screen(initial_property_list: properties),
                                                  )
                                                );
                                          },
                                        child: Text(
                                          "View all",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodySmall!
                                              .copyWith(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 12,
                                                  letterSpacing: -0.36,
                                                  color: Color(0xFF7E7E7E)),
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: spacingHeight1,
                                  ),
                                  SizedBox(
                                    height: 200,
                                    child: ListView.builder(
                                      scrollDirection: Axis.horizontal,
                                      itemCount: properties.length,
                                      itemBuilder: (context, index) {
                                        return FeaturedCard(
                                          backgroundImage:
                                              properties[index].imageUrl,
                                          title: properties[index].title,
                                          price: properties[index]
                                              .price
                                              .toString(),
                                        );
                                      },
                                    ),
                                  ),
                                  SizedBox(
                                    height: spacingHeight1* 2,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "New Offers",
                                        style: Theme.of(context)
                                            .textTheme
                                            .displaySmall,
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                            Navigator.push(
                                                context, 
                                                MaterialPageRoute(
                                                  builder: (context) => SearchCatalog3Screen(initial_property_list: properties),
                                                  )
                                                );
                                          },
                                        child: Text(
                                          "View all",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodySmall!
                                              .copyWith(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 12,
                                                  letterSpacing: -0.36,
                                                  color: Color(0xFF7E7E7E)),
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: spacingHeight1,
                                  ),
                                  Expanded(
                                    
                                    child: ListView.builder(
                                      padding: const EdgeInsets.fromLTRB(0, 5, 0, 20), 
                                      scrollDirection: Axis.vertical,
                                      
                                      itemCount: properties.length,
                                      itemBuilder: (context, index) {
                                        return NewOfferCard(
                                          backgroundImage:
                                              properties[index].imageUrl,
                                          title: properties[index].title,
                                          price: properties[index]
                                              .price
                                              .toString(),
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    );
                  } else if (state is SearchCatalogInitialState ||
                      state is SearchCatalogLoadingState) {
                    return const CircularProgressIndicator();
                  } else if (state is SearchCatalogErrorState) {
                    return Container();
                  } else {
                    return const Center(child: Text('System Error'));
                  }
                },
              ),
              Positioned(
                left: 0,
                right: 0,
                top: 0,
                child: Container(
                  height: headerCardHeight,
                  decoration: const BoxDecoration(
                      color: Color(0xFFF0F298),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30))),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        SizedBox(
                          height: headerCardHeight * 0.19,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {},
                              child: SizedBox(
                                width: 24,
                                height: 24,
                                child: Image.asset(
                                  height: 24,
                                  width: 24,
                                  'lib/assets/icons/menu_icon.png',
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  "Hi, Stanislav",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .copyWith(letterSpacing: -0.36),
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                const Stack(
                                  children: [
                                    CircleAvatar(
                                      child: Text('S'),
                                      radius: 20,
                                      backgroundColor: Color(0xFFA9A9A9),
                                    ),
                                    Positioned(
                                      right: 0,
                                      top: 0,
                                      child: CircleAvatar(
                                        radius: 5,
                                        backgroundColor: Color(0xFFDE5D83),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Container(
                          height: 50,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 2.0, horizontal: 20.0),
                            child: TextField(
                                controller: searchController,
                                // onChanged: ,
                                decoration: const InputDecoration(
                                    hintText: 'Search',
                                    border: InputBorder.none,
                                    prefixIcon: Icon(
                                      Icons.search,
                                      size: 24,
                                    ))),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}