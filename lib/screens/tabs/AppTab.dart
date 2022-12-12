import 'package:flutter/material.dart';
import 'package:playstore/constants/colors.dart';

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
              title: Row(
                children: [
                  const Text('s'),
                  Expanded(child: Container()),
                  const Icon(Icons.search),
                ],
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
                    text: 'For you',
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
            Text('for you'),
            Text('top charts'),
            Text('kids'),
            Text('categories'),
          ],
        ),
      ),
    );
  }
}
