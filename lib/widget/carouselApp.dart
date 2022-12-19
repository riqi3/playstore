import 'dart:math';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:playstore/constants/colors.dart';

class carouselApp extends StatefulWidget {
  const carouselApp({super.key});

  @override
  State<carouselApp> createState() => _carouselAppState();
}

class _carouselAppState extends State<carouselApp> {
  List<String> appIcon = [
    'assets/apps/for you/fb/fb-profile.png',
    'assets/apps/for you/ig/ig-profile.png',
    'assets/apps/for you/sp/sp-profile.png',
    'assets/apps/for you/tw/tw-profile.png',
    'assets/apps/for you/nx/nx-profile.png',
  ];

  List<String> title = [
    'Facebook',
    'Instagram',
    'Spotify',
    'Twitter',
    'Netflix'
  ];

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      SizedBox(
        height: 20,
      ),
      CarouselSlider(
        options: CarouselOptions(
          height: 250,
          padEnds: false,
          viewportFraction: .3,
          pageSnapping: true,
          enableInfiniteScroll: false,
        ),
        items: appIcon.map((i) {
          return Builder(builder: (BuildContext context) {
            return Container(
              width: 100,
              margin: EdgeInsets.symmetric(horizontal: 5.0),
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
                  //first row: recommended for you
                  //first row: first app
                  if (i ==
                      'assets/apps/for you/fb/fb-profile.png')
                    Container(
                      child: Row(
                        children: [
                          Flexible(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 0.0),
                              child: Column(
                                
                                children: <Widget>[
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Container(
                                    
                                    child: Text(
                                      "${title[0]}",
                                      textAlign: TextAlign.left,
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 2,
                                      softWrap: true,
                                    ),
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
                    //first row: second app
                  if (i ==
                      'assets/apps/for you/ig/ig-profile.png')
                    Container(
                      child: Row(
                        children: [
                          Flexible(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 0.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Container(
                                    
                                    child: Text(
                                      "${title[1]}",
                                      textAlign: TextAlign.left,
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 2,
                                      softWrap: true,
                                    ),
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
//first row: third app
                  if (i ==
                      'assets/apps/for you/sp/sp-profile.png')
                    Container(
                      child: Row(
                        children: [
                          Flexible(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 0.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Container(
                                    
                                    child: Text(
                                      "${title[2]}",
                                      textAlign: TextAlign.left,
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 2,
                                      softWrap: true,
                                    ),
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
                    //first row: fourth app
                  if (i ==
                      'assets/apps/for you/tw/tw-profile.png')
                    Container(
                      child: Row(
                        children: [
                          Flexible(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 0.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Container(
                                    
                                    child: Text(
                                      "${title[3]}",
                                      textAlign: TextAlign.left,
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 2,
                                      softWrap: true,
                                    ),
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
                    //first row: third app
                  if (i ==
                      'assets/apps/for you/nx/nx-profile.png')
                    Container(
                      child: Row(
                        children: [
                          Flexible(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 0.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Container(
                                    
                                    child: Text(
                                      "${title[4]}",
                                      textAlign: TextAlign.left,
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 2,
                                      softWrap: true,
                                    ),
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


Text _rating() {
  Random random = new Random();
  double randomNumber = random.nextDouble() * 5;
  randomNumber = double.parse(randomNumber.toStringAsFixed(1));
  if (randomNumber <= 0.9){
    return Text('1.0');
  }
  return Text('${randomNumber}');
}