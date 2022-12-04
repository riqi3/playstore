import 'package:flutter/material.dart';

class BookTab extends StatefulWidget {
  const BookTab({super.key});

  @override
  State<BookTab> createState() => _TopTabBarState();
}

class _TopTabBarState extends State<BookTab>
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
            Text('1 book'),
            Text('2 book'),
            Text('3 book'),
          ],
        ),
      ),
    );
  }
}
