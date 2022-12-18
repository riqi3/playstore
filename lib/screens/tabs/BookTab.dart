import 'package:flutter/material.dart';
import 'package:playstore/constants/colors.dart';
import 'package:playstore/constants/colors.dart';

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

    _tabController = TabController(length: 6, vsync: this);
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
                            'Search Books',
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
                labelPadding: EdgeInsets.only(left: 25, right: 25),
                controller: _tabController,
                unselectedLabelColor: grey1,
                indicatorColor: Colors.blue,
                labelColor: highlight,
                indicator: UnderlineTabIndicator(
                  borderSide: BorderSide(width: 3.0),
                ),
                tabs: <Widget>[
                  Tab(
                    text: 'Ebooks',
                  ),
                  Tab(
                    text: 'Audiobooks',
                  ),
                  Tab(
                    text: 'Genres',
                  ),
                  Tab(
                    text: 'Top selling',
                  ),
                  Tab(
                    text: 'New releases',
                  ),
                  Tab(
                    text: 'Top free',
                  ),
                ],
              ),
            ),
          ];
        },
        body: TabBarView(
          controller: _tabController,
          children: <Widget>[
            Text('ebooks'),
            Text('audiobooks'),
            Text('genres'),
            Text('top selling'),
            Text('new releases'),
            Text('top free'),
          ],
        ),
      ),
    );
  }
}
