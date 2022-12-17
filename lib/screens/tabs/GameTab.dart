import 'package:flutter/material.dart';
import 'package:playstore/constants/colors.dart';
import 'package:playstore/widget/carouselCategory.dart';
import 'package:playstore/widget/carouselLarge.dart';

import '../../widget/carousel.dart';

class GameTab extends StatefulWidget {
  const GameTab({super.key});

  @override
  State<GameTab> createState() => _TopTabBarState();
}

class _TopTabBarState extends State<GameTab>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();

    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              backgroundColor: Colors.white,
              pinned: true,
              floating: true,
              title: Row(
                children: [
                  const Text('s'),
                  Expanded(child: Container()),
                  const Icon(Icons.search),
                ],
              ),
              bottom: TabBar(
                isScrollable: true,
                labelPadding: EdgeInsets.only(left: 30, right: 30),
                controller: _tabController,
                unselectedLabelColor: grey1,
                indicatorColor: Colors.blue,
                labelColor: highlight,
                indicator: UnderlineTabIndicator(
                  borderSide: BorderSide(width: 3.0),
                ),
                tabs: <Widget>[
                  Tab(
                    text: 'For you',
                  ),
                  Tab(
                    text: 'Top charts',
                  ),
                  Tab(
                    text: 'Kids',
                  ),
                  Tab(
                    text: 'Premium',
                  ),
                  Tab(
                    text: 'Categories',
                  ),
                ],
              ),
            ),
          ];
        },
        body: TabBarView(
          controller: _tabController,
          children: <Widget>[
            Container(
              width: 500,
              child: ListView(
                children: [
                  //RECOMMENDED FOR YOU
                  Container(
                    child: Column(
                      children: [
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 25.0, right: 25.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                'Recommended for you',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600, fontSize: 20),
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Icon(Icons.arrow_forward_rounded),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              carousel(),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  //SUGGESTED FOR YOU
                  Container(
                    child: Column(
                      children: [
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 25.0, right: 25.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                child: Row(
                                  children: [
                                    Text('Ads'),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 8.0, right: 8.0),
                                      child: Text(
                                        '•',
                                        style: TextStyle(fontSize: 18),
                                      ),
                                    ),
                                    Text(
                                      'Suggested for you',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 20),
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
                        ),
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              carouselLarge(),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                   //NEW & UPDATED GAMES
                  Container(
                    child: Column(
                      children: [
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 25.0, right: 25.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                'New & updated games',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600, fontSize: 20),
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Icon(Icons.arrow_forward_rounded),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              carousel(),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            TopChartCarousel(),
            Text('kids'),
            Text('premium'),
            Text('categories'),
          ],
        ),
      ),
    );
  }
}
