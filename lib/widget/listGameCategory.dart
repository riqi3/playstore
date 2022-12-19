import 'package:flutter/material.dart';

import '../constants/colors.dart';

class GameCategory extends StatefulWidget {
  const GameCategory({super.key});

  @override
  State<GameCategory> createState() => _GameCategoryState();
}

class _GameCategoryState extends State<GameCategory> {
  double font_style = 20;
  double scale_icon = 1.4;

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

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(),
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: Container(
              child: Column(
                children: [

//CAT 1

                  Container(
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 18.0),
                          child: Image.asset(
                            "${c_icons[1]}",
                            scale: scale_icon,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
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

//CAT 2

                  Container(
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 18.0),
                          child: Image.asset(
                            "${c_icons[2]}",
                            scale: scale_icon,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
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



//CAT 3

                  Container(
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 18.0),
                          child: Image.asset(
                            "${c_icons[3]}",
                            scale: scale_icon,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
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





//CAT 4

                  Container(
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 18.0),
                          child: Image.asset(
                            "${c_icons[4]}",
                            scale: scale_icon,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
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





//CAT 5

                  Container(
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 18.0),
                          child: Image.asset(
                            "${c_icons[5]}",
                            scale: scale_icon,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
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





//CAT 6

                  Container(
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 18.0),
                          child: Image.asset(
                            "${c_icons[6]}",
                            scale: scale_icon,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
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





//CAT 7

                  Container(
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 18.0),
                          child: Image.asset(
                            "${c_icons[7]}",
                            scale: scale_icon,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
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





//CAT 8

                  Container(
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 18.0),
                          child: Image.asset(
                            "${c_icons[8]}",
                            scale: scale_icon,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
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





//CAT 9

                  Container(
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 18.0),
                          child: Image.asset(
                            "${c_icons[9]}",
                            scale: scale_icon,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
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





//CAT 10

                  Container(
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 18.0),
                          child: Image.asset(
                            "${c_icons[10]}",
                            scale: scale_icon,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
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





//CAT 1

                  Container(
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 18.0),
                          child: Image.asset(
                            "${c_icons[11]}",
                            scale: scale_icon,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
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





//CAT 12

                  Container(
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 18.0),
                          child: Image.asset(
                            "${c_icons[12]}",
                            scale: scale_icon,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
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





//CAT 13

                  Container(
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 18.0),
                          child: Image.asset(
                            "${c_icons[13]}",
                            scale: scale_icon,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
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





//CAT 14

                  Container(
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 18.0),
                          child: Image.asset(
                            "${c_icons[14]}",
                            scale: scale_icon,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
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





//CAT 15

                  Container(
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 18.0),
                          child: Image.asset(
                            "${c_icons[15]}",
                            scale: scale_icon,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
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





//CAT 16

                  Container(
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 18.0),
                          child: Image.asset(
                            "${c_icons[16]}",
                            scale: scale_icon,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
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

                  


//CAT 17

                  Container(
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 18.0),
                          child: Image.asset(
                            "${c_icons[17]}",
                            scale: scale_icon,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
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



                  SizedBox(height: 20,)

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
