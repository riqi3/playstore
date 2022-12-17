import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

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
                  if (i ==
                      'assets/games/cc/cc-cover.png')
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
                                  "${appIcon[0]}",
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
                  if (i ==
                      'assets/games/pvz/pvz-cover.png')
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
                  if (i ==
                      'assets/games/coc/coc-cover.png')
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
                                    ],),
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
