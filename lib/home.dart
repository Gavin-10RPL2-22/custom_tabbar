import 'package:flutter/material.dart';
import 'package:flutter_colorful_tab/flutter_colorful_tab.dart';
import 'package:test_tabbar/mutual.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    _tabController = TabController(vsync: this, length: 3);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: EdgeInsets.all(12),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ColorfulTabBar(
                indicatorHeight: 0,
                verticalTabPadding: 0.0,
                labelColor: Colors.blue[700],
                unselectedLabelColor: Colors.white,
                tabs: [
                  TabItem(
                      color: Colors.white,
                      title: Container(
                          child:
                              Text('Mutual Fund', textAlign: TextAlign.center),
                          width: MediaQuery.of(context).size.width * 0.3),
                      unselectedColor: Colors.blue[200]),
                  TabItem(
                      color: Colors.white,
                      title: Container(
                          child: Text('Bond', textAlign: TextAlign.center),
                          width: MediaQuery.of(context).size.width * 0.3),
                      unselectedColor: Colors.blue[200]),
                  TabItem(
                      color: Colors.white,
                      title: Container(
                          child: Text('Unit Link', textAlign: TextAlign.center),
                          width: MediaQuery.of(context).size.width * 0.3),
                      unselectedColor: Colors.blue[200]),
                ],
                controller: _tabController,
              ),
              Expanded(
                child: TabBarView(controller: _tabController, children: [
                  MutualPage(),
                  Center(child: Text("Bond")),
                  Center(child: Text("Unit Link")),
                ]),
              ),
            ],
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
