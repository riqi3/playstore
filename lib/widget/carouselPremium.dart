import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:playstore/constants/colors.dart';
import 'dart:math';

import 'package:playstore/screens/tabs/AppTab.dart';

class carouselPremium extends StatefulWidget {
  const carouselPremium({super.key});

  @override
  State<carouselPremium> createState() => _carouselPremiumState();
}

class _carouselPremiumState extends State<carouselPremium> {
  List<String> appIcon = [
    'assets/games/premium/mc/mc-profile.png',
    'assets/games/premium/te/te-profile.png',
    'assets/games/premium/stv/stv-profile.png',
    'assets/games/premium/gta/gta-profile.png',
    'assets/games/premium/ds/ds-profile.png',
  ];

  List<String> title = [
    'Minecraft',
    'Terraria',
    'Stardew Valley',
    'Grand Theft Auto: Vice City',
    'Don''t Starve: Pocket Edition',
  ];
  
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      // Padding(
      //   padding: const EdgeInsets.only(top: 30.0),
        // sectionTitle1(),
      // ),
      SizedBox(
        height: 20,
      ),
      CarouselSlider(
        options: CarouselOptions(
          height: 190,
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
                      'assets/games/premium/mc/mc-profile.png')
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
                                              Padding(
                                                padding: const EdgeInsets.only(left:3.0),
                                                child: _price(),
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
                      'assets/games/premium/te/te-profile.png')
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
                                              Padding(
                                                padding: const EdgeInsets.only(left:3.0),
                                                child: _price(),
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
                      'assets/games/premium/stv/stv-profile.png')
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
                                              Padding(
                                                padding: const EdgeInsets.only(left:3.0),
                                                child: _price(),
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
                      'assets/games/premium/gta/gta-profile.png')
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
                                              Padding(
                                                padding: const EdgeInsets.only(left:3.0),
                                                child: _price(),
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
                      'assets/games/premium/ds/ds-profile.png')
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
                                              Padding(
                                                padding: const EdgeInsets.only(left:3.0),
                                                child: _price(),
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


Text _price() {
  Random random = new Random();
  double randomNumber = random.nextDouble() * 998;
  randomNumber = double.parse(randomNumber.toStringAsFixed(2));
  if (randomNumber <= 48.99){
    return Text('₱49.00');
  }
  return Text('₱${randomNumber}');
}


// class sectionTitle1 extends StatelessWidget {
//   const sectionTitle1({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     List<String> s_title =[
//       'Recommended for you',
//       'Offline games',
//       'Stylized games',
//       'Casual games'
//     ];

//     return Padding(
//       padding: const EdgeInsets.only(left: 25.0, right: 25.0),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: <Widget>[
//           Container(
//             child: Row(
//               children: [
                
//                 Text(
//                   '${s_title[1]}',
//                   style: TextStyle(
//                       fontWeight: FontWeight.w600, fontSize: 20),
//                 ),
//               ],
//             ),
//           ),
//           Align(
//             alignment: Alignment.centerRight,
//             child: Icon(Icons.arrow_forward_rounded),
//           ),
//         ],
//       ),
//     );
//   }
// }



class sectionTitle2 extends StatelessWidget {
  const sectionTitle2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> s_title =[
      'Recommended for you',
      'Offline games',
      'Stylized games',
      'Casual games'
    ];

    return Padding(
      padding: const EdgeInsets.only(left: 25.0, right: 25.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            child: Row(
              children: [
                
                Text(
                  '${s_title[1]}',
                  style: TextStyle(
                      fontWeight: FontWeight.w600, fontSize: 20),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Icon(Icons.arrow_forward_rounded),
          ),
        ],
      ),
    );
  }
}