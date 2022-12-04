import 'package:flutter/material.dart';


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

    _tabController = TabController(length: 3, vsync: this);
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
                controller: _tabController,
                labelColor: Colors.black,
                tabs: <Widget>[
                  Tab(
                    text: '1',
                  ),
                  Tab(
                    text: '2',
                  ),
                  Tab(
                    text: '3',
                  ),
                ],
              ),
            ),
          ];
        },
        body: TabBarView(
          controller: _tabController,
          children: <Widget>[
            Text('1 app'),
            Text('2 app'),
            Text('3 app'),
          ],
        ),
      ),
    );
  }
}
