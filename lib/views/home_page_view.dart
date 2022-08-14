import 'dart:ui';

import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:healty_follower/core/png_image.dart';
import 'package:healty_follower/product/const/color_items.dart';
import 'package:healty_follower/product/const/image_items.dart';
import 'package:healty_follower/product/const/login_page_items.dart';
import 'package:healty_follower/product/const/padding_items.dart';
import 'package:healty_follower/product/const/project_common_items.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({Key? key}) : super(key: key);

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

List<Widget> plants = [
  Container(),
];

class _HomePageViewState extends State<HomePageView> {
  int _currentPageIndex = 1;
  void _updatePageIndex(int index) {
    setState(() {
      _currentPageIndex = index + 1;
    });
  }

  int _bottomNavIndex = 1;
  final PageController _plantPageController = PageController(viewportFraction: 0.9, keepPage: true);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: (){},
          ),
          
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: [Icons.home,Icons.abc],
        activeIndex: _bottomNavIndex,
        notchSmoothness: NotchSmoothness.softEdge,
        gapLocation: GapLocation.center,
        leftCornerRadius: 26,
        rightCornerRadius: 26,
        onTap: (index) => setState(() => _bottomNavIndex = index),
        activeColor: ColorItems.reptileGreen,
        notchMargin:15,
       
        backgroundColor:Colors.amber,
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 4,
                  child: Image.asset(
                    "assets/img/img_home_banner.png",
                    fit: BoxFit.fill,
                  )),
              Positioned(
                top: 70,
                left: 23,
                right: 23,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              CommonItems.hello + "Taylor",
                              style: Theme.of(context)
                                  .textTheme
                                  .headline5
                                  ?.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              LoginItems.helloTextDown,
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                        ClipOval(
                          child: SizedBox.fromSize(
                              size: Size.fromRadius(24), // Image radius
                              child: PngImage(name: ImageItems.avatar)),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 140, left: 23, right: 23),
                child: Material(
                  borderRadius: BorderRadius.circular(64),
                  elevation: 5,
                  child: Container(
                    padding: EdgeInsets.only(top: 5, right: 15, left: 15),
                    width: MediaQuery.of(context).size.width,
                    height: 60,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(64), color: Colors.white),
                    child: TextField(
                      cursorColor: ColorItems.greenPatina,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          icon: Image.asset("assets/ico/ic_search.png"),
                          hintText: "Search For Plants"),
                    ),
                  ),
                ),
              )
            ],
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Container(
                child: ListView(
                  children: [
                    Padding(
                      padding: PaddingItems.paddingHorizontal,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 30),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Material(
                                  shadowColor: ColorItems.reptileGreen,
                                  elevation: 8,
                                  borderRadius: BorderRadius.circular(8),
                                  child: InkWell(
                                    onTap: () {},
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: ColorItems.greenPatina,
                                      ),
                                      width: 108,
                                      height: 76,
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(vertical: 15),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Image.asset(
                                              "assets/ico/ic_camera.png",
                                            ),
                                            Text(
                                              "IDENTFIY",
                                              style: TextStyle(color: Colors.white),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Material(
                                  elevation: 8,
                                  borderRadius: BorderRadius.circular(8),
                                  child: InkWell(
                                    onTap: () {},
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: Colors.white,
                                      ),
                                      width: 98,
                                      height: 69,
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(vertical: 10),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Image.asset(
                                              "assets/ico/ic_plant.png",
                                            ),
                                            Text(
                                              "SPECIES",
                                              style: TextStyle(color: ColorItems.nouveau),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Material(
                                  elevation: 8,
                                  borderRadius: BorderRadius.circular(8),
                                  child: InkWell(
                                    onTap: () {},
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: Colors.white,
                                      ),
                                      width: 98,
                                      height: 69,
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(vertical: 10),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Image.asset(
                                              "assets/ico/ic_book.png",
                                            ),
                                            Text(
                                              "ARTICLES",
                                              style: TextStyle(color: ColorItems.nouveau),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 36,
                          ),
                          Text(
                            "Plant Types",
                            style: Theme.of(context)
                                .textTheme
                                .headline5
                                ?.copyWith(color: ColorItems.sargassoSea, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 36,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: 160,
                            child: PageView(
                              padEnds: false,
                              controller: _plantPageController,
                              onPageChanged: (int index) {
                                _updatePageIndex(index);
                              },
                              children: [
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 160,
                                  child: Stack(children: [
                                    PngImage(name: ImageItems.plantType),
                                    Positioned(
                                        top: 90,
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 8),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Home Plants",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .headline6
                                                    ?.copyWith(color: Colors.white),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                "68 Types of Plants",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .subtitle2
                                                    ?.copyWith(color: Colors.white),
                                              )
                                            ],
                                          ),
                                        ))
                                  ]),
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 160,
                                  child: Stack(children: [
                                    PngImage(name: ImageItems.plantType),
                                    Positioned(
                                        top: 90,
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 8),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Home Plants",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .headline6
                                                    ?.copyWith(color: Colors.white),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                "68 Types of Plants",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .subtitle2
                                                    ?.copyWith(color: Colors.white),
                                              )
                                            ],
                                          ),
                                        ))
                                  ]),
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 160,
                                  child: Stack(children: [
                                    PngImage(name: ImageItems.plantType),
                                    Positioned(
                                        top: 90,
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 8),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Home Plants",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .headline6
                                                    ?.copyWith(color: Colors.white),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                "68 Types of Plants",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .subtitle2
                                                    ?.copyWith(color: Colors.white),
                                              )
                                            ],
                                          ),
                                        ))
                                  ]),
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 160,
                                  child: Stack(children: [
                                    PngImage(name: ImageItems.plantType),
                                    Positioned(
                                        top: 90,
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 8),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Home Plants",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .headline6
                                                    ?.copyWith(color: Colors.white),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                "68 Types of Plants",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .subtitle2
                                                    ?.copyWith(color: Colors.white),
                                              )
                                            ],
                                          ),
                                        ))
                                  ]),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 36,
                          ),
                          Text(
                            "Photography",
                            style: Theme.of(context)
                                .textTheme
                                .headline5
                                ?.copyWith(color: ColorItems.sargassoSea, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 36,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: 160,
                            child: PageView(
                              padEnds: false,
                              controller: _plantPageController,
                              onPageChanged: (int index) {
                                _updatePageIndex(index);
                              },
                              children: [
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 160,
                                  child: Stack(children: [
                                    PngImage(name: ImageItems.plantType),
                                    Positioned(
                                        top: 90,
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 8),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Home Plants",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .headline6
                                                    ?.copyWith(color: Colors.white),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                "68 Types of Plants",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .subtitle2
                                                    ?.copyWith(color: Colors.white),
                                              )
                                            ],
                                          ),
                                        ))
                                  ]),
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 160,
                                  child: Stack(children: [
                                    PngImage(name: ImageItems.plantType),
                                    Positioned(
                                        top: 90,
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 8),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Home Plants",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .headline6
                                                    ?.copyWith(color: Colors.white),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                "68 Types of Plants",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .subtitle2
                                                    ?.copyWith(color: Colors.white),
                                              )
                                            ],
                                          ),
                                        ))
                                  ]),
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 160,
                                  child: Stack(children: [
                                    PngImage(name: ImageItems.plantType),
                                    Positioned(
                                        top: 90,
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 8),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Home Plants",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .headline6
                                                    ?.copyWith(color: Colors.white),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                "68 Types of Plants",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .subtitle2
                                                    ?.copyWith(color: Colors.white),
                                              )
                                            ],
                                          ),
                                        ))
                                  ]),
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 160,
                                  child: Stack(children: [
                                    PngImage(name: ImageItems.plantType),
                                    Positioned(
                                        top: 90,
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 8),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Home Plants",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .headline6
                                                    ?.copyWith(color: Colors.white),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                "68 Types of Plants",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .subtitle2
                                                    ?.copyWith(color: Colors.white),
                                              )
                                            ],
                                          ),
                                        ))
                                  ]),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
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
