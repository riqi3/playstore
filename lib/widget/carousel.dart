import 'dart:math';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';

class carousel extends StatefulWidget {
  const carousel({super.key});

  @override
  State<carousel> createState() => _carouselState();
}

class _carouselState extends State<carousel> {
  List<String> title = [
    'Candy Crush Saga',
    'Plants vs. Zombies',
    'Clash of Clans',
  ];

  List<String> category = [
    'Puzzle',
    'Strategy',
    'Strategy',
  ];

  List<String> type = [
    'Match 3',
    'Tactics',
    '',
  ];

  List<String> imageList = [
    "assets/games/cc/cc-cover.png",
    "assets/games/pvz/pvz-cover.png",
    "assets/games/coc/coc-cover.png",
  ];

  List<String> appIcon = [
    "assets/games/cc/cc-profile.png",
    "assets/games/pvz/pvz-profile.png",
    "assets/games/coc/coc-profile.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      SizedBox(
        height: 20,
      ),
      CarouselSlider(
        options: CarouselOptions(
          height: 300,
          padEnds: false,
          pageSnapping: true,
          viewportFraction: .7,
          enableInfiniteScroll: false,
          disableCenter: true,
          initialPage: 0,
        ),
        items: imageList.map((i) {
          return Builder(builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              height: 100,
              margin: EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10), // Image border
                    child: SizedBox.fromSize(
                      // Image radius
                      child: Image.asset(
                        i,
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  if (i == 'assets/games/cc/cc-cover.png')
                    Container(
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              _modalTC(context);
                              print('object');
                            },
                            onLongPress: () {
                              _modalTC(context);
                            },
                            child: Container(
                              child: ClipRRect(
                                borderRadius:
                                    BorderRadius.circular(10), // Image border
                                child: SizedBox.fromSize(
                                  size: Size.fromRadius(40), // Image radius
                                  child: Image.asset(
                                    "${appIcon[0]}",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Flexible(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    child: Text(
                                      "${title[0]}",
                                      maxLines: 1,
                                      softWrap: true,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Container(
                                    child: Row(
                                      children: [
                                        Text(
                                          "${category[0]}",
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 8.0, right: 8.0),
                                          child: Text('•'),
                                        ),
                                        Text(
                                          "${type[0]}",
                                          overflow: TextOverflow.clip,
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Container(
                                    child: Row(
                                      children: [
                                        Container(
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                right: 10.0),
                                            child: Row(children: [
                                              Text('4.5'),
                                              Icon(
                                                Icons.star,
                                                size: 13,
                                              ),
                                            ]),
                                          ),
                                        ),
                                        Text('72 MB'),
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
                  if (i == 'assets/games/pvz/pvz-cover.png')
                    Container(
                      child: Row(
                        children: [
                          Container(
                            child: ClipRRect(
                              borderRadius:
                                  BorderRadius.circular(10), // Image border
                              child: SizedBox.fromSize(
                                size: Size.fromRadius(40), // Image radius
                                child: Image.asset(
                                  "${appIcon[1]}",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Flexible(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    child: Text(
                                      "${title[1]}",
                                      maxLines: 1,
                                      softWrap: true,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Container(
                                    child: Row(
                                      children: [
                                        Text(
                                          "${category[1]}",
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 8.0, right: 8.0),
                                          child: Text('•'),
                                        ),
                                        Text(
                                          "${type[1]}",
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Container(
                                    child: Row(
                                      children: [
                                        Container(
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                right: 10.0),
                                            child: Row(children: [
                                              Text('4.5'),
                                              Icon(
                                                Icons.star,
                                                size: 13,
                                              ),
                                            ]),
                                          ),
                                        ),
                                        Text('72 MB'),
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
                  if (i == 'assets/games/coc/coc-cover.png')
                    Container(
                      child: Row(
                        children: [
                          Container(
                            child: ClipRRect(
                              borderRadius:
                                  BorderRadius.circular(10), // Image border
                              child: SizedBox.fromSize(
                                size: Size.fromRadius(40), // Image radius
                                child: Image.asset(
                                  "${appIcon[2]}",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Flexible(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    child: Row(
                                      children: [
                                        Text(
                                          "${title[2]}",
                                          maxLines: 1,
                                          softWrap: true,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Container(
                                    child: Row(
                                      children: [
                                        Text(
                                          "${category[2]}",
                                        ),
                                        // Padding(
                                        //   padding: const EdgeInsets.only(
                                        //       left: 8.0, right: 8.0),
                                        //   child: Text('•'),
                                        // ),
                                        // Text(
                                        //   "${type[2]}",
                                        // ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Container(
                                    child: Row(
                                      children: [
                                        Container(
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                right: 10.0),
                                            child: Row(children: [
                                              Text('4.5'),
                                              Icon(
                                                Icons.star,
                                                size: 13,
                                              ),
                                            ]),
                                          ),
                                        ),
                                        Text('72 MB'),
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
  double fontSize = 10;

  List<String> appInfo = [
    'assets/games/cc/cc-profile.png',
    'Candy Crush Saga',
    'Rated for 3+',
    'Contains ads •',
    'In-app purchases',
  ];

  double font_style = 25;

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
            Container(
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: grey2,
                          width: 1,
                        ),
                      ),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top:10.0, bottom: 10.0),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 0.0),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 10.0, top: 10.0),
                              child: Image.asset(
                                "${appInfo[0]}",
                                scale: 9,
                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 2, bottom: 2),
                                child: Text(
                                  "${appInfo[1]}",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 20),
                                ),
                              ),
                              Row(
                                children: [
                                  _rating(),
                                  Icon(
                                    Icons.star,
                                    size: 12,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5.0),
                                    child: Text(
                                      "${appInfo[2]}",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: fontSize),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 0.0),
                                    child: Text(
                                      "${appInfo[3]}",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: fontSize),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 0.0),
                                    child: Text(
                                      "${appInfo[4]}",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: fontSize),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
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
  );
}

Text _rating() {
  Random random = new Random();
  double randomNumber = random.nextDouble() * 5;
  randomNumber = double.parse(randomNumber.toStringAsFixed(1));
  if (randomNumber <= 0.9) {
    return Text('1.0');
  }
  return Text('${randomNumber}');
}
