import 'package:flutter/material.dart';
import 'package:playstore/constants/colors.dart';
import 'package:playstore/widget/carouselCategory.dart';
import 'package:playstore/widget/carouselLarge.dart';
import 'package:playstore/widget/categoryAge.dart';

import '../../widget/carousel.dart';
import '../../widget/carouselAppKids.dart';
import '../../widget/carouselPremium.dart';
import '../../widget/listGames.dart';

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
      backgroundColor: Colors.white,
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
                                  child: GestureDetector(
                                    onTap: () {
                                      lightbox();
                                    },
                                    child: CircleAvatar(
                                      backgroundColor: Colors.brown.shade800,
                                      child: const Text('EE'),
                                    ),
                                  )),
                            ]),
                      ),
                    ],
                  ),
                ),
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
                  recommended(),
                  //SUGGESTED FOR YOU
                  suggestedSection(),
                  //NEW & UPDATED GAMES
                  newsUpdatedSection(),
                ],
              ),
            ),
            Container(
              child: ListView(
                children: [
                  //FILTER TAB CAROUSEL
                  TopChartCarousel(),
                  //TOP GAMES LIST
                  TopGames(),
                ],
              ),
            ),
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
            Container(
              child: ListView(
                children: [
                  //FILTER TAB CAROUSEL
                  carouselPremium(),
                  //TOP GAMES LIST
                  TopGames(),
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

class heroKidSection extends StatelessWidget {
  const heroKidSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
                            Container(
      child: AspectRatio(
        aspectRatio: 16 / 9, //aspect ratio for Image
        child: Image(
          image: AssetImage('assets/kids.png'),
          fit:
              BoxFit.fill, //fill type of image inside aspectRatio
        ),
      ),
    ),
    Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Center(
        child: ConstrainedBox(
          constraints:
              BoxConstraints.expand(height: 100, width: 320),
          child: Text(
            'Everything here is Teacher Approved',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 27,
              fontWeight: FontWeight.w600,
            ),
          ), //Text
        ),
      ),
    ),
    Center(
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            elevation: 100,
            primary: btnBg,
            shadowColor: Colors.transparent,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(32.0)),
          ),
          onPressed: () {
            print('object');
          },
          child: Padding(
            padding: const EdgeInsets.all(13.0),
            child: Text('Learn more'),
          )),
    ),
        ],
      ),
    );
  }
}

class recommended extends StatelessWidget {
  const recommended({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 25.0, right: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Recommended for you',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
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
    );
  }
}

class suggestedSection extends StatelessWidget {
  const suggestedSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 25.0, right: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  child: Row(
                    children: [
                      Text('Ads'),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                        child: Text(
                          '•',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                      Text(
                        'Suggested for you',
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
    );
  }
}

class newsUpdatedSection extends StatelessWidget {
  const newsUpdatedSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 25.0, right: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'New & updated games',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
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
    );
  }
}

Container lightbox() {
  return Container(
    width: 320.0,
    height: 180.0,
    decoration: BoxDecoration(
      image: DecorationImage(
        image: NetworkImage(
            "https://images.unsplash.com/photo-1671275422160-a28a214effe3?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=465&q=80"),
        fit: BoxFit.cover,
        colorFilter:
            ColorFilter.mode(Colors.black.withOpacity(0.2), BlendMode.darken),
      ),
    ),
  );
}
