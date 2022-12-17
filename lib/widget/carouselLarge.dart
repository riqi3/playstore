import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class carouselLarge extends StatefulWidget {
  const carouselLarge({super.key});

  @override
  State<carouselLarge> createState() => _carouselLargeState();
}

class _carouselLargeState extends State<carouselLarge> {

  List<String> title = [
    'Asphalt Nitro aaaa aa aa aaaaa',
    'Plants vs. Zombies',
    'Shadow Fight 3',
  ];

  List<String> category = [
    'Racing',
    'Strategy',
    'Role Playing',
  ];

  List<String> type = [
    'Car',
    'Tactics',
    'Action',
  ];

  List<String> imageList = [
    "https://images.unsplash.com/photo-1670811456186-e73d0ace9454?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
    "https://images.unsplash.com/photo-1671067039708-6e192b9811aa?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1175&q=80",
    "https://images.unsplash.com/photo-1661961110671-77b71b929d52?ixlib=rb-4.0.3&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
  ];

  List<String> appIcon = [
    "https://images.unsplash.com/photo-1618352357270-ef40d25bcef8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80",
    "https://images.unsplash.com/photo-1621342261924-3e2f6c9603f5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80",
    "https://images.unsplash.com/photo-1633467067670-30701ff2dcbd?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      SizedBox(
        height: 20,
      ),
      CarouselSlider(
        options: CarouselOptions(
          height: 350,
          padEnds: false,
          pageSnapping: true,
          
          viewportFraction: .9,
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
                      child: Image.network(
                        i,
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  if (i ==
                      'https://images.unsplash.com/photo-1670811456186-e73d0ace9454?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80')
                    Container(
                      child: Row(
                        children: [
                          Container(
                            child: ClipRRect(
                              borderRadius:
                                  BorderRadius.circular(10), // Image border
                              child: SizedBox.fromSize(
                                size: Size.fromRadius(40), // Image radius
                                child: Image.network(
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
                      'https://images.unsplash.com/photo-1671067039708-6e192b9811aa?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1175&q=80')
                    Container(
                      child: Row(
                        children: [
                          Container(
                            child: ClipRRect(
                              borderRadius:
                                  BorderRadius.circular(10), // Image border
                              child: SizedBox.fromSize(
                                size: Size.fromRadius(40), // Image radius
                                child: Image.network(
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
                      'https://images.unsplash.com/photo-1661961110671-77b71b929d52?ixlib=rb-4.0.3&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80')
                    Container(
                      child: Row(
                        children: [
                          Container(
                            child: ClipRRect(
                              borderRadius:
                                  BorderRadius.circular(10), // Image border
                              child: SizedBox.fromSize(
                                size: Size.fromRadius(40), // Image radius
                                child: Image.network(
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
                                    child: Text(
                                      "${title[2]}",
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
                                          "${category[2]}",
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
                ],
              ),
            );
          });
        }).toList(),
      ),
    ]);
  }
}
