import 'package:flutter/material.dart';
import 'dart:math';

class TopGames extends StatefulWidget {
  const TopGames({super.key});

  @override
  State<TopGames> createState() => _TopGamesState();
}

class _TopGamesState extends State<TopGames> {
  List<String> title = [
    'Candy Crush Saga',
    'Plants vs. Zombies',
    'Clash of Clans',
    'Roblox',
    'Mobile Legends: Bang Bang',
    'Chess'
  ];

  List<String> category = [
    'Puzzle',
    'Strategy',
    'Strategy',
    'Adventure',
    'Action',
    'Board'
  ];

  List<String> type = [
    'Match 3',
    'Tactics',
    ' ',
    'Simulation',
    'Strategy',
    'Strategy'
  ];

  List<String> appIcon = [
    "assets/games/cc/cc-profile.png",
    "assets/games/pvz/pvz-profile.png",
    "assets/games/coc/coc-profile.jpg",
    'assets/games/rbx/rbx-profile.png',
    'assets/games/ml/ml-profile.png',
    'assets/games/chss/chss-profile.png',
  ];

  double fontSizeTitle = 15;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding:
            const EdgeInsets.only(left: 25.0, right: 25.0, bottom: 10, top: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
//LIST GAMES 1

                    Row(
                      children: [
                        Text('1'),
                        SizedBox(
                          width: 15,
                        ),
                        ClipRRect(
                          borderRadius:
                              BorderRadius.circular(10), // Image border
                          child: SizedBox.fromSize(
                            size: Size.fromRadius(30), // Image radius
                            child: Image.asset(
                              "${appIcon[0]}",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Flexible(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "${title[0]}",
                                      maxLines: 1,
                                      softWrap: true,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontSize: fontSizeTitle,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
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
                                            _rating(),
                                            Icon(
                                              Icons.star,
                                              size: 13,
                                            ),
                                          ]),
                                        ),
                                      ),
                                      _appSize(),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(
                      height: 20,
                    ),
//LIST GAMES 2

                    Row(
                      children: [
                        Text('2'),
                        SizedBox(
                          width: 15,
                        ),
                        ClipRRect(
                          borderRadius:
                              BorderRadius.circular(10), // Image border
                          child: SizedBox.fromSize(
                            size: Size.fromRadius(30), // Image radius
                            child: Image.asset(
                              "${appIcon[1]}",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Flexible(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "${title[1]}",
                                      maxLines: 1,
                                      softWrap: true,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontSize: fontSizeTitle,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
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
                                            _rating(),
                                            Icon(
                                              Icons.star,
                                              size: 13,
                                            ),
                                          ]),
                                        ),
                                      ),
                                      _appSize(),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(
                      height: 20,
                    ),
//LIST GAMES 3

                    Row(
                      children: [
                        Text('3'),
                        SizedBox(
                          width: 15,
                        ),
                        ClipRRect(
                          borderRadius:
                              BorderRadius.circular(10), // Image border
                          child: SizedBox.fromSize(
                            size: Size.fromRadius(30), // Image radius
                            child: Image.asset(
                              "${appIcon[2]}",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Flexible(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "${title[2]}",
                                      maxLines: 1,
                                      softWrap: true,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontSize: fontSizeTitle,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
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
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 8.0, right: 8.0),
                                      ),
                                      Text(
                                        "${type[2]}",
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
                                            _rating(),
                                            Icon(
                                              Icons.star,
                                              size: 13,
                                            ),
                                          ]),
                                        ),
                                      ),
                                      _appSize(),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),


                    SizedBox(
                      height: 20,
                    ),
//LIST GAMES 4

                    Row(
                      children: [
                        Text('4'),
                        SizedBox(
                          width: 15,
                        ),
                        ClipRRect(
                          borderRadius:
                              BorderRadius.circular(10), // Image border
                          child: SizedBox.fromSize(
                            size: Size.fromRadius(30), // Image radius
                            child: Image.asset(
                              "${appIcon[3]}",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Flexible(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "${title[3]}",
                                      maxLines: 1,
                                      softWrap: true,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontSize: fontSizeTitle,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Container(
                                  child: Row(
                                    children: [
                                      Text(
                                        "${category[3]}",
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 8.0, right: 8.0),
                                            child: Text('•'),
                                      ),
                                      
                                      Text(
                                        "${type[3]}",
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
                                            _rating(),
                                            Icon(
                                              Icons.star,
                                              size: 13,
                                            ),
                                          ]),
                                        ),
                                      ),
                                      _appSize(),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),





                    SizedBox(
                      height: 20,
                    ),
//LIST GAMES 5

                    Row(
                      children: [
                        Text('5'),
                        SizedBox(
                          width: 15,
                        ),
                        ClipRRect(
                          borderRadius:
                              BorderRadius.circular(10), // Image border
                          child: SizedBox.fromSize(
                            size: Size.fromRadius(30), // Image radius
                            child: Image.asset(
                              "${appIcon[4]}",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Flexible(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "${title[4]}",
                                      maxLines: 1,
                                      softWrap: true,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontSize: fontSizeTitle,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Container(
                                  child: Row(
                                    children: [
                                      Text(
                                        "${category[4]}",
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 8.0, right: 8.0),
                                            child: Text('•'),
                                      ),
                                      
                                      Text(
                                        "${type[4]}",
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
                                            _rating(),
                                            Icon(
                                              Icons.star,
                                              size: 13,
                                            ),
                                          ]),
                                        ),
                                      ),
                                      _appSize(),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),



                    SizedBox(
                      height: 20,
                    ),
//LIST GAMES 6

                    Row(
                      children: [
                        Text('6'),
                        SizedBox(
                          width: 15,
                        ),
                        ClipRRect(
                          borderRadius:
                              BorderRadius.circular(10), // Image border
                          child: SizedBox.fromSize(
                            size: Size.fromRadius(30), // Image radius
                            child: Image.asset(
                              "${appIcon[5]}",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Flexible(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "${title[5]}",
                                      maxLines: 1,
                                      softWrap: true,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontSize: fontSizeTitle,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Container(
                                  child: Row(
                                    children: [
                                      Text(
                                        "${category[5]}",
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 8.0, right: 8.0),
                                            child: Text('•'),
                                      ),
                                      
                                      Text(
                                        "${type[5]}",
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
                                            _rating(),
                                            Icon(
                                              Icons.star,
                                              size: 13,
                                            ),
                                          ]),
                                        ),
                                      ),
                                      _appSize(),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
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
    );
  }
}

Text _rating() {
  Random random = new Random();
  double randomNumber = random.nextDouble() * 5;
  randomNumber = double.parse(randomNumber.toStringAsFixed(1));
  if (randomNumber <= 0.9){
    return Text('1.0');
  }
  return Text('${randomNumber}');
}

Text _appSize() {
  Random random = new Random();
  int randomNumber = random.nextInt(200);
  if (randomNumber <= 49.0){
    return Text('50 MB');
  }
  return Text('${randomNumber} MB');
}


