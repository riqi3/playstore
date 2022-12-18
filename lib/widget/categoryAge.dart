import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:playstore/constants/colors.dart';
import 'package:playstore/widget/listGames.dart';

class AgeCategory extends StatefulWidget {
  const AgeCategory({super.key});

  @override
  State<AgeCategory> createState() => _AgeCategoryState();
}

class _AgeCategoryState extends State<AgeCategory> {
  List<String> title = [
    'Ages up to 5',
    'Ages 6-8',
    'Ages 9-12',
  ];


  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Container(
        child: Row(children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              'Brows by age',
              style: TextStyle(fontSize: 20, 
              fontWeight: FontWeight.w500
              ),
            ),
          ),
        ]),
      ),
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
                  if (i == 'Ages up to 5')
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
                                  left: 10.0, right: 10.0),
                              child: Container(
                                child: Row(
                                  children: [
                                    Text(
                                      '${title[0]}',
                                      style: TextStyle(
                                          color: grey3,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    // Icon(
                                    //   Icons.arrow_drop_down_sharp,
                                    //   color: topChart2,
                                    // ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  if (i == 'Ages 6-8')
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
                                    // Icon(
                                    //   Icons.arrow_drop_down_sharp,
                                    //   color: grey3,
                                    // ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  if (i == 'Ages 9-12')
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
