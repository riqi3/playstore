import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:playstore/constants/colors.dart';

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

  List<String> c_title = [
    'Categories'
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
    return Column(children: <Widget>[
      SizedBox(
        height: 20,
      ),
      CarouselSlider(
        options: CarouselOptions(
          viewportFraction: .6,
          height: 100,
          padEnds: false,
          pageSnapping: false,
          enableInfiniteScroll: false,
          disableCenter: true,
          initialPage: 0,
        ),
        items: title.map((i) {
          return Builder(builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              height: 100,
              margin: EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
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
                            onPressed: () {},
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
                              primary: Colors.black,
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
                                      '${title[1]}',
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
                  if (i == 'New')
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 15.0, right: 15.0),
                              child: Text('${title[2]}'),
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
