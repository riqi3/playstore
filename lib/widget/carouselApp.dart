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
    "https://images.unsplash.com/photo-1618352357270-ef40d25bcef8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80",
    "https://images.unsplash.com/photo-1621342261924-3e2f6c9603f5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80",
    "https://images.unsplash.com/photo-1633467067670-30701ff2dcbd?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80",
    "https://images.unsplash.com/photo-1593799723560-499b89c0397c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80",
    "https://images.unsplash.com/photo-1650366616718-96c4a566e4d2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80",
  ];

  List<String> title = [
    'Google ',
    'Google Meet',
    'Google Assistant',
    'Google Classroom',
    'Google Chrome: Fast & Secure'
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
                      child: Image.network(
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
                      'https://images.unsplash.com/photo-1618352357270-ef40d25bcef8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80')
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
                                              Text('4.5'),
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
                      'https://images.unsplash.com/photo-1621342261924-3e2f6c9603f5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80')
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
                                              Text('4.7'),
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
                      'https://images.unsplash.com/photo-1633467067670-30701ff2dcbd?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80')
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
                                              Text('4.4'),
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
                      'https://images.unsplash.com/photo-1593799723560-499b89c0397c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80')
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
                                              Text('4.9'),
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
                      'https://images.unsplash.com/photo-1650366616718-96c4a566e4d2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80')
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
                                              Text('4.6'),
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
