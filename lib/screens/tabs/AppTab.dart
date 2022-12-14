import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:playstore/constants/colors.dart';
import 'package:playstore/screens/tabs/GameTab.dart';
import 'package:playstore/widget/carouselApp.dart';
import 'package:playstore/widget/carouselAppKids.dart';
import 'package:playstore/widget/categoryAge.dart';

class AppTab extends StatefulWidget {
  const AppTab({super.key});

  @override
  State<AppTab> createState() => _TopTabBarState();
}

class _TopTabBarState extends State<AppTab>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();

    _tabController = TabController(length: 4, vsync: this);
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
              title: Container(
                decoration: BoxDecoration(
                  color: bg,
                  borderRadius: BorderRadius.circular(25),
                ),
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: new Container(
                          child: Icon(
                            Icons.search,
                            color: grey1,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: new Container(
                          child: Text(
                            'Search for apps & games',
                            style: TextStyle(
                                color: grey1, fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                      Flexible(fit: FlexFit.tight, child: SizedBox()),
                      Container(
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                  padding: const EdgeInsets.only(right: 18.0),
                                  child: CircleAvatar(
                                    backgroundColor: Colors.brown.shade800,
                                    child: const Text('EE'),
                                  )),
                            ]),
                      ),
                    ],
                  ),
                ),
              ),
              bottom: TabBar(
                isScrollable: true,
                labelPadding: EdgeInsets.only(left: 20, right: 20),
                controller: _tabController,
                unselectedLabelColor: grey1,
                indicatorColor: Colors.blue,
                labelColor: highlight,
                indicator: UnderlineTabIndicator(
                  borderSide: BorderSide(width: 3.0),
                ),
                tabs: <Widget>[
                  Tab(
                    text: 'For You',
                  ),
                  Tab(
                    text: 'Top charts',
                  ),
                  Tab(
                    text: 'Kids',
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
                  recommendedSection(),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        carouselApp(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Text('top charts'),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: ListView(
                children: [
                  // HERO SECTION KID
                  heroKidSection(),
                  // FILTER TAB CAROUSEL
                  AgeCategory(),
                  //APP RECOMMENDATIONS
                  carouselAppKids(),
                ],
              ),
            ),
            Text('categories'),
          ],
        ),
      ),
    );
  }
}

class recommendedSection extends StatelessWidget {
  const recommendedSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 25.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            'Popular apps',
            style: TextStyle(
                fontWeight: FontWeight.w600, fontSize: 20),
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


