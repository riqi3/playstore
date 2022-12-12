import 'package:flutter/material.dart';

import '../constants/colors.dart';
import 'tabs/AppTab.dart';
import 'tabs/GameTab.dart';
import 'tabs/BookTab.dart';

class HomepageScreen extends StatefulWidget {
  const HomepageScreen({super.key});

  @override
  State<HomepageScreen> createState() => _HomepageScreenState();
}

class _HomepageScreenState extends State<HomepageScreen>
    with SingleTickerProviderStateMixin {
  int botTab = 0;

  TabController? _tabController;

  @override
  void initState() {
    super.initState();

    _tabController = TabController(length: 3, vsync: this, animationDuration: Duration.zero);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
          controller: _tabController,
          physics: NeverScrollableScrollPhysics(),
          children: <Widget>[
            GameTab(),
            AppTab(),
            BookTab(),
          ]),
      // body: Container(
      //   child: pages.elementAt(botTab),
      // ),
      // body: NestedScrollView(
      //   headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
      //     return <Widget>[
      // SliverAppBar(
      //   pinned: true,
      //   floating: true,
      //   title: Row(
      //     children: [
      //       const Text('s'),
      //       Expanded(child: Container()),
      //       const Icon(Icons.search),
      //     ],
      //   ),
      //   bottom: TabBar(
      //     controller: _tabController,
      //     tabs: const <Widget>[
      //       Tab(
      //         child: Text('1'),
      //       ),
      //       Tab(
      //         child: Text('2'),
      //       ),
      //       Tab(
      //         child: Text('3'),
      //       ),
      //       Tab(
      //         child: Text('4'),
      //       ),
      //     ],
      //   ),
      // ),
      //     ];
      //   },
      //   body: TabBarView(
      //     controller: _tabController,
      //     children: const <Widget>[
      //       Text('1 top'),
      //       Text('2 top'),
      //       Text('3 top'),
      //       Text('4 top'),
      //     ],
      //   ),
      //   // body: Container(
      //   //   child: pages.elementAt(botTab),
      //   // ),
      // ),

      bottomNavigationBar: Container(
        color: botNavBarBg,
        child: TabBar(
          labelColor: iconColor,
          controller: _tabController,
          unselectedLabelColor: grey1,
          indicatorColor: highlight,
          tabs: <Widget>[
            Tab(
              icon: Icon(Icons.videogame_asset_outlined),
              text: 'Games',
            ),
            Tab(
              icon: Icon(Icons.category_outlined),
              text: 'Apps',
            ),
            Tab(
              icon: Icon(Icons.book_outlined),
              text: 'Books',
            ),
          ],
          onTap: tabOnTap,
        ),
      ),

      // bottomNavigationBar: BottomNavigationBar(
      //   fixedColor: iconColor,
      //   items: const <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.videogame_asset_outlined),
      //       label: 'Games',
      //       activeIcon: Icon(Icons.videogame_asset_rounded),
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.category_outlined),
      //       label: 'Apps',
      //       activeIcon: Icon(Icons.category_rounded),
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.book_outlined),
      //       label: 'Books',
      //       activeIcon: Icon(Icons.book),
      //     ),
      //   ],
      // currentIndex: botTab,
      // onTap: tabOnTap,
      // ),
    );

    // body: Container(
    //   child: pages.elementAt(botTab),
    // ),
  }

  void tabOnTap(int index) {
    setState(() {
      botTab = index;
    });
  }
}

