import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:playstore/constants/colors.dart';
import 'package:playstore/widget/listGames.dart';

class TopChartCarousel extends StatefulWidget {
  const TopChartCarousel({super.key});

  @override
  State<TopChartCarousel> createState() => _TopChartCarouselState();
}

class _TopChartCarouselState extends State<TopChartCarousel> {
  List<String> title = [
    'Top free',
    'Categories',
    'New',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
     
      CarouselSlider(
        options: CarouselOptions(
          viewportFraction: .43,
          height: 50,
          padEnds: false,
          pageSnapping: false,
          enableInfiniteScroll: false,
          disableCenter: false,
        ),
        items: title.map((i) {
          return Builder(builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              height: 10,
              // margin: EdgeInsets.symmetric(horizontal: 0.0),
              child: Column(
                children: [
                  if (i == 'Top free')
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              elevation: 10,
                              primary: topChart,
                              shadowColor: Colors.transparent,
                            ),
                            onPressed: () {
                              _modalTC(context);
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 10.0, right: 10.0),
                              child: Container(
                                child: Row(
                                  children: [
                                    Text(
                                      '${title[0]}',
                                      style: TextStyle(
                                          color: topChart2,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    Icon(
                                      Icons.arrow_drop_down_sharp,
                                      color: topChart2,
                                    ),
                                    
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  if (i == 'Categories')
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              side: const BorderSide(
                                width: 1,
                                color: grey2,
                              ),
                              elevation: 10,
                              primary: Colors.white,
                              shadowColor: Colors.transparent,
                            ),
                            onPressed: () {
                              _modalCategories(context);
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 10.0, right: 10.0),
                              child: Container(
                                child: Row(
                                  children: [
                                    Text(
                                      '${title[1]}',
                                      style: TextStyle(
                                          color: grey3,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    Icon(
                                      Icons.arrow_drop_down_sharp,
                                      color: grey3,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  if (i == 'New')
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              side: const BorderSide(
                                width: 1,
                                color: grey2,
                              ),
                              elevation: 10,
                              primary: Colors.white,
                              shadowColor: Colors.transparent,
                            ),
                            onPressed: () {},
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 15.0, right: 15.0),
                              child: Container(
                                child: Row(
                                  children: [
                                    Text(
                                      '${title[2]}',
                                      style: TextStyle(
                                          color: grey3,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                ],
              ),
            );
          });
        }).toList(),
      ),
    ]);
  }
}

void _modalTC(BuildContext context) {
  List<String> tf_title = [
    'Top free',
    'Top grossing',
    'Top paid',
  ];

  double font_style = 18;

  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    builder: (context) => Container(
      height: MediaQuery.of(context).size.height * 0.42,
      decoration: new BoxDecoration(
        color: Colors.white,
        borderRadius: new BorderRadius.only(),
      ),
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Container(
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 30.0),
                            child: Text(
                              'Top charts',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 30),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          topLeft: Radius.circular(10),
                        ),
                        border: Border.all(
                          color: grey2,
                          width: 1,
                        ),
                        color: topChart,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(13.0),
                        child: Text(
                          "${tf_title[0]}",
                          style: TextStyle(
                            color: topChart2,
                            fontSize: font_style,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(),
                        border: Border.all(
                          color: grey2,
                          width: 1,
                        ),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(13.0),
                        child: Text(
                          "${tf_title[1]}",
                          style: TextStyle(
                            color: grey3,
                            fontSize: font_style,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        ),
                        border: Border.all(
                          color: grey2,
                          width: 1,
                        ),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(13.0),
                        child: Text(
                          "${tf_title[2]}",
                          style: TextStyle(
                            color: grey3,
                            fontSize: font_style,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

void _modalCategories(BuildContext context) {

 
double font_style = 18;

  List<String> c_icons = [
    ' ',
    'assets/icons/icon-action.png',
    'assets/icons/icon-adventure.png',
    'assets/icons/icon-arcade.png',
    'assets/icons/icon-board.png',
    'assets/icons/icon-card.png',
    'assets/icons/icon-casino.png',
    'assets/icons/icon-casual.png',
    'assets/icons/icon-educational.png',
    'assets/icons/icon-music.png',
    'assets/icons/icon-puzzle.png',
    'assets/icons/icon-racing.png',
    'assets/icons/icon-roleplaying.png',
    'assets/icons/icon-simulation.png',
    'assets/icons/icon-sports.png',
    'assets/icons/icon-strategy.png',
    'assets/icons/icon-trivia.png',
    'assets/icons/icon-word.png',
  ];

  List<String> c_title = [
    'All Categories',
    'Action',
    'Adventure',
    'Arcade',
    'Board',
    'Card',
    'Casino',
    'Casual',
    'Educational',
    'Music',
    'Puzzle',
    'Racing',
    'Role Playing',
    'Simulation',
    'Sports',
    'Strategy',
    'Trivia',
    'Word',
  ];

    showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    builder: (context) => Container(
      height: MediaQuery.of(context).size.height * 0.95,
      decoration: new BoxDecoration(
        color: Colors.white,
        borderRadius: new BorderRadius.only(),
      ),
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Container(
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 20.0),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right:20.0),
                              child: Container(
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child: Icon(Icons.close),
                                ),
                              ),
                            ),
                            
                              Text(
                                'Categories',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 25),
                              ),
                            
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          topLeft: Radius.circular(10),
                        ),
                        border: Border.all(
                          color: grey2,
                          width: 1,
                        ),
                        color: topChart,
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Text(
                              "${c_title[0]}",
                              style: TextStyle(
                                color: topChart2,
                                fontSize: font_style,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

//CATG_1

                    Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(),
                        border: Border.all(
                          color: grey2,
                          width: 1,
                        ),
                        color: Colors.white,
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 18.0),
                            child: Image.asset(
                              "${c_icons[1]}",
                              scale: 2,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Text(
                              "${c_title[1]}",
                              style: TextStyle(
                                color: grey3,
                                fontSize: font_style,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

//CATG_2

                    Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(),
                        border: Border.all(
                          color: grey2,
                          width: 1,
                        ),
                        color: Colors.white,
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 18.0),
                            child: Image.asset(
                              '${c_icons[2]}',
                              scale: 2,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Text(
                              "${c_title[2]}",
                              style: TextStyle(
                                color: grey3,
                                fontSize: font_style,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

//CATG_3

                    Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(),
                        border: Border.all(
                          color: grey2,
                          width: 1,
                        ),
                        color: Colors.white,
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 18.0),
                            child: Image.asset(
                              '${c_icons[3]}',
                              scale: 2,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Text(
                              "${c_title[3]}",
                              style: TextStyle(
                                color: grey3,
                                fontSize: font_style,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

//CATG_4

                    Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(),
                        border: Border.all(
                          color: grey2,
                          width: 1,
                        ),
                        color: Colors.white,
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 18.0),
                            child: Image.asset(
                              '${c_icons[4]}',
                              scale: 2,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Text(
                              "${c_title[4]}",
                              style: TextStyle(
                                color: grey3,
                                fontSize: font_style,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

//CATG_5

                    Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(),
                        border: Border.all(
                          color: grey2,
                          width: 1,
                        ),
                        color: Colors.white,
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 18.0),
                            child: Image.asset(
                              '${c_icons[5]}',
                              scale: 2,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Text(
                              "${c_title[5]}",
                              style: TextStyle(
                                color: grey3,
                                fontSize: font_style,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

//CATG_6

                    Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(),
                        border: Border.all(
                          color: grey2,
                          width: 1,
                        ),
                        color: Colors.white,
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 18.0),
                            child: Image.asset(
                              '${c_icons[6]}',
                              scale: 2,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Text(
                              "${c_title[6]}",
                              style: TextStyle(
                                color: grey3,
                                fontSize: font_style,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

//CATG_7

                    Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(),
                        border: Border.all(
                          color: grey2,
                          width: 1,
                        ),
                        color: Colors.white,
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 18.0),
                            child: Image.asset(
                              '${c_icons[7]}',
                              scale: 2,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Text(
                              "${c_title[7]}",
                              style: TextStyle(
                                color: grey3,
                                fontSize: font_style,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

//CATG_8

                    Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(),
                        border: Border.all(
                          color: grey2,
                          width: 1,
                        ),
                        color: Colors.white,
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 18.0),
                            child: Image.asset(
                              '${c_icons[8]}',
                              scale: 2,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Text(
                              "${c_title[8]}",
                              style: TextStyle(
                                color: grey3,
                                fontSize: font_style,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

//CATG_9

                    Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(),
                        border: Border.all(
                          color: grey2,
                          width: 1,
                        ),
                        color: Colors.white,
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 18.0),
                            child: Image.asset(
                              '${c_icons[9]}',
                              scale: 2,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Text(
                              "${c_title[9]}",
                              style: TextStyle(
                                color: grey3,
                                fontSize: font_style,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

//CATG_10

                    Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(),
                        border: Border.all(
                          color: grey2,
                          width: 1,
                        ),
                        color: Colors.white,
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 18.0),
                            child: Image.asset(
                              '${c_icons[10]}',
                              scale: 2,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Text(
                              "${c_title[10]}",
                              style: TextStyle(
                                color: grey3,
                                fontSize: font_style,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

//CATG_11

                    Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(),
                        border: Border.all(
                          color: grey2,
                          width: 1,
                        ),
                        color: Colors.white,
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 18.0),
                            child: Image.asset(
                              '${c_icons[11]}',
                              scale: 2,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Text(
                              "${c_title[11]}",
                              style: TextStyle(
                                color: grey3,
                                fontSize: font_style,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

//CATG_12

                    Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(),
                        border: Border.all(
                          color: grey2,
                          width: 1,
                        ),
                        color: Colors.white,
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 18.0),
                            child: Image.asset(
                              '${c_icons[12]}',
                              scale: 2,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Text(
                              "${c_title[12]}",
                              style: TextStyle(
                                color: grey3,
                                fontSize: font_style,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

//CATG_13

                    Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(),
                        border: Border.all(
                          color: grey2,
                          width: 1,
                        ),
                        color: Colors.white,
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 18.0),
                            child: Image.asset(
                              '${c_icons[13]}',
                              scale: 2,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Text(
                              "${c_title[13]}",
                              style: TextStyle(
                                color: grey3,
                                fontSize: font_style,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

//CATG_14

                    Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(),
                        border: Border.all(
                          color: grey2,
                          width: 1,
                        ),
                        color: Colors.white,
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 18.0),
                            child: Image.asset(
                              '${c_icons[14]}',
                              scale: 2,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Text(
                              "${c_title[14]}",
                              style: TextStyle(
                                color: grey3,
                                fontSize: font_style,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

//CATG_15

                    Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(),
                        border: Border.all(
                          color: grey2,
                          width: 1,
                        ),
                        color: Colors.white,
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 18.0),
                            child: Image.asset(
                              '${c_icons[15]}',
                              scale: 2,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Text(
                              "${c_title[15]}",
                              style: TextStyle(
                                color: grey3,
                                fontSize: font_style,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

//CATG_16

                    Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(),
                        border: Border.all(
                          color: grey2,
                          width: 1,
                        ),
                        color: Colors.white,
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 18.0),
                            child: Image.asset(
                              '${c_icons[16]}',
                              scale: 2,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Text(
                              "${c_title[16]}",
                              style: TextStyle(
                                color: grey3,
                                fontSize: font_style,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

//CATG_17

                    Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        ),
                        border: Border.all(
                          color: grey2,
                          width: 1,
                        ),
                        color: Colors.white,
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 18.0),
                            child: Image.asset(
                              '${c_icons[17]}',
                              scale: 2,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Text(
                              "${c_title[17]}",
                              style: TextStyle(
                                color: grey3,
                                fontSize: font_style,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );

}
