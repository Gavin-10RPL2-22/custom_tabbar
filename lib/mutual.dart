import 'package:flutter/material.dart';

class MutualPage extends StatefulWidget {
  const MutualPage({Key? key}) : super(key: key);

  @override
  State<MutualPage> createState() => _MutualPageState();
}

class _MutualPageState extends State<MutualPage>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  List outperform_benchmark = [
    "24 of 43",
    "24 of 43",
    "24 of 43",
    "24 of 43",
  ];

  final _tabs = [
    Tab(text: '1 Month'),
    Tab(text: '3 Month'),
    Tab(text: '6 Month'),
    Tab(text: 'YTD'),
    Tab(text: '1 Year'),
    Tab(text: '3 Year'),
    Tab(text: '5 Year'),
  ];

  @override
  void initState() {
    _tabController = TabController(length: 7, vsync: this);
    super.initState();
  }

  Widget _buildTableProductRows() {
    Widget cont = Container(child: Text("No Data"));
    if (outperform_benchmark.length > 0) {
      List<Widget> widgets = [];
      outperform_benchmark.asMap().forEach((index, _) {
        widgets.add(tableBody(index));
      });
      cont = Column(
        children: widgets,
      );
    }
    return Container(child: cont);
  }

  Widget tableBody(int index) {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 15),
            child: Text(outperform_benchmark[index],
                textAlign: TextAlign.center, style: TextStyle(fontSize: 9)),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 15),
            child: Text(outperform_benchmark[index],
                textAlign: TextAlign.center, style: TextStyle(fontSize: 9)),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 15),
            child: Text(outperform_benchmark[index],
                textAlign: TextAlign.center, style: TextStyle(fontSize: 9)),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 15),
            child: Text(outperform_benchmark[index],
                textAlign: TextAlign.center, style: TextStyle(fontSize: 9)),
          ),
        ),
      ],
    );
  }

  Widget headerBuilder() {
    return Container(
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(width: 3.0, color: Colors.blue.shade300),
          ),
        ),
        padding: EdgeInsets.all(5),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text("< 100 M",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.blue[700],
                        fontSize: 8,
                        fontWeight: FontWeight.w600)),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text("100 M - 500 M",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.blue[700],
                        fontSize: 8,
                        fontWeight: FontWeight.w600)),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text("500 M - 1 T",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.blue[700],
                        fontSize: 8,
                        fontWeight: FontWeight.w600)),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text("> 1 T",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.blue[700],
                        fontSize: 8,
                        fontWeight: FontWeight.w600)),
              ),
            ),
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            tabbar_view(),
            Column_1(),
            Column_2(),
            Column_3(),
          ],
        ),
      ),
    );
  }

  Column_1() {
    return Padding(
      padding: EdgeInsets.all(12),
      child: Card(
        clipBehavior: Clip.hardEdge,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        elevation: 5,
        shadowColor: Colors.grey,
        child: Padding(
          padding: EdgeInsets.fromLTRB(15, 15, 15, 30),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Positioned(
                          top: 9,
                          left: 13,
                          child: Container(
                            color: Colors.grey[200],
                            height: MediaQuery.of(context).size.height * 0.02,
                            width: MediaQuery.of(context).size.width * 0.15,
                          ),
                        ),
                        Text("Benchmark Performance",
                            style: TextStyle(
                                color: Colors.blue[700],
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                    Image.asset("assets/share.png", scale: 1.5),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(5, 20, 5, 5),
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(right: 12),
                        child: Card(
                          clipBehavior: Clip.hardEdge,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          color: Colors.red[200],
                          elevation: 2,
                          shadowColor: Colors.black,
                          child: Padding(
                            padding: EdgeInsets.all(15),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image.asset("assets/chart.png", scale: 1),
                                    Padding(
                                      padding: EdgeInsets.only(left: 100),
                                      child: Text("-1.05%",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 17)),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 10),
                                  child: Text(
                                    "Infovesta Equity Fund Index",
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(right: 12),
                        child: Card(
                          clipBehavior: Clip.hardEdge,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          color: Colors.yellow[100],
                          elevation: 2,
                          shadowColor: Colors.black,
                          child: Padding(
                            padding: EdgeInsets.all(15),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image.asset("assets/doughnut-chart.png",
                                        scale: 1),
                                    Padding(
                                      padding: EdgeInsets.only(left: 100),
                                      child: Text("8.85%",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 17)),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 10),
                                  child: Text(
                                    "Infovesta Balanced Fund Index",
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(right: 12),
                        child: Card(
                          clipBehavior: Clip.hardEdge,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          color: Colors.green[100],
                          elevation: 2,
                          shadowColor: Colors.black,
                          child: Padding(
                            padding: EdgeInsets.all(15),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image.asset("assets/line-chart.png",
                                        scale: 1),
                                    Padding(
                                      padding: EdgeInsets.only(left: 100),
                                      child: Text("6.75%",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 17)),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 10),
                                  child: Text(
                                    "Infovesta Fixed Income Fund Index",
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(right: 12),
                        child: Card(
                          clipBehavior: Clip.hardEdge,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          color: Colors.blue[200],
                          elevation: 2,
                          shadowColor: Colors.black,
                          child: Padding(
                            padding: EdgeInsets.all(15),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image.asset("assets/money.png", scale: 1),
                                    Padding(
                                      padding: EdgeInsets.only(left: 100),
                                      child: Text("3.05%",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 17)),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 10),
                                  child: Text(
                                    "Infovesta Money Market Fund Index",
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Column_2() {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(12),
            child: Card(
              clipBehavior: Clip.hardEdge,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              elevation: 5,
              shadowColor: Colors.grey,
              child: Padding(
                padding: EdgeInsets.fromLTRB(15, 15, 15, 30),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Positioned(
                                top: 10,
                                left: 13,
                                child: Container(
                                  color: Colors.grey[200],
                                  height: 13,
                                  width:
                                      MediaQuery.of(context).size.width * 0.28,
                                ),
                              ),
                              Text(
                                  "Asset Under Management (AUM) Growth by Type",
                                  style: TextStyle(
                                      color: Colors.blue[700],
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                          Image.asset("assets/share.png", scale: 1.5),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(5, 20, 5, 5),
                      child: Center(child: Text("Chart")),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(12),
            child: Card(
              clipBehavior: Clip.hardEdge,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              elevation: 5,
              shadowColor: Colors.grey,
              child: Padding(
                padding: EdgeInsets.fromLTRB(15, 15, 15, 30),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Positioned(
                                top: 10,
                                left: 10,
                                child: Container(
                                  color: Colors.grey[200],
                                  height: 13,
                                  width:
                                      MediaQuery.of(context).size.width * 0.15,
                                ),
                              ),
                              Text("% Outperform Benchmark",
                                  style: TextStyle(
                                      color: Colors.blue[700],
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                          Image.asset("assets/share.png", scale: 1.5),
                        ],
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(height: 68),
                            Row(
                              children: [
                                Container(
                                  height: 15,
                                  width: 15,
                                  decoration: BoxDecoration(
                                    color: Colors.red[200],
                                    shape: BoxShape.circle,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 10),
                                  child: Text(
                                    "Equity",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.red[200],
                                        fontSize: 12),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: 25),
                            Row(
                              children: [
                                Container(
                                  height: 15,
                                  width: 15,
                                  decoration: BoxDecoration(
                                    color: Colors.yellow[200],
                                    shape: BoxShape.circle,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 10),
                                  child: Text(
                                    "Balanced",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.yellowAccent[700],
                                        fontSize: 12),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: 25),
                            Row(
                              children: [
                                Container(
                                  height: 15,
                                  width: 15,
                                  decoration: BoxDecoration(
                                    color: Colors.green[200],
                                    shape: BoxShape.circle,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 10),
                                  child: Text(
                                    "Fixed Income",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.green[200],
                                        fontSize: 12),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: 25),
                            Row(
                              children: [
                                Container(
                                  height: 15,
                                  width: 15,
                                  decoration: BoxDecoration(
                                    color: Colors.blue[200],
                                    shape: BoxShape.circle,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 10),
                                  child: Text(
                                    "Money Market",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.blue[200],
                                        fontSize: 12),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Text("Asset Under Management (AUM)",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.blue[700],
                                      fontWeight: FontWeight.bold)),
                              headerBuilder(),
                              _buildTableProductRows(),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Column_3() {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(12),
            child: Card(
              clipBehavior: Clip.hardEdge,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              elevation: 5,
              shadowColor: Colors.grey,
              child: Padding(
                padding: EdgeInsets.fromLTRB(15, 15, 15, 30),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Positioned(
                                top: 10,
                                left: 12,
                                child: Container(
                                  color: Colors.grey[200],
                                  height: 13,
                                  width:
                                      MediaQuery.of(context).size.width * 0.16,
                                ),
                              ),
                              Text("Top Fund Manager by AUM",
                                  style: TextStyle(
                                      color: Colors.blue[700],
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                          Image.asset("assets/share.png", scale: 1.5),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(5, 20, 5, 5),
                      child: Stack(
                        children: [
                          Image.asset(
                            "assets/bigchart.png",
                          ),
                          Column(
                            children: [
                              _headerlist(),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(12),
                child: Card(
                  clipBehavior: Clip.hardEdge,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation: 5,
                  shadowColor: Colors.grey,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(15, 15, 15, 30),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Stack(
                                clipBehavior: Clip.none,
                                children: [
                                  Positioned(
                                    top: 10,
                                    left: 10,
                                    child: Container(
                                      color: Colors.grey[200],
                                      height: 13,
                                      width: MediaQuery.of(context).size.width *
                                          0.23,
                                    ),
                                  ),
                                  Text("Top Fund Manager by AUM Growth (%)",
                                      style: TextStyle(
                                          color: Colors.blue[700],
                                          fontWeight: FontWeight.bold)),
                                ],
                              ),
                              Image.asset("assets/share.png", scale: 1.5),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(5, 20, 5, 5),
                          child: Center(child: Text("Chart")),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(12),
                child: Card(
                  clipBehavior: Clip.hardEdge,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation: 5,
                  shadowColor: Colors.grey,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(15, 15, 15, 30),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Stack(
                                clipBehavior: Clip.none,
                                children: [
                                  Positioned(
                                    top: 10,
                                    left: 10,
                                    child: Container(
                                      color: Colors.grey[200],
                                      height: 13,
                                      width: MediaQuery.of(context).size.width *
                                          0.19,
                                    ),
                                  ),
                                  Text("Best Fund Manager Performance",
                                      style: TextStyle(
                                          color: Colors.blue[700],
                                          fontWeight: FontWeight.bold)),
                                ],
                              ),
                              Image.asset("assets/share.png", scale: 1.5),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(5, 20, 5, 5),
                          child: Row(
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsets.only(right: 12),
                                  child: Card(
                                    clipBehavior: Clip.hardEdge,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    color: Colors.red[200],
                                    elevation: 2,
                                    shadowColor: Colors.black,
                                    child: Padding(
                                      padding: EdgeInsets.all(10),
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(top: 3),
                                            child: Text(
                                              "Equity",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(top: 20),
                                            child: Text(
                                              "STAR",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(top: 5),
                                            child: Text(
                                              "30.04%",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w300),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsets.only(right: 12),
                                  child: Card(
                                    clipBehavior: Clip.hardEdge,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    color: Colors.yellow[100],
                                    elevation: 2,
                                    shadowColor: Colors.black,
                                    child: Padding(
                                      padding: EdgeInsets.all(10),
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(top: 3),
                                            child: Text(
                                              "Balanced",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(top: 20),
                                            child: Text(
                                              "Jasa Capital AM",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(top: 5),
                                            child: Text(
                                              "28.59%",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w300),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsets.only(right: 12),
                                  child: Card(
                                    clipBehavior: Clip.hardEdge,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    color: Colors.green[100],
                                    elevation: 2,
                                    shadowColor: Colors.black,
                                    child: Padding(
                                      padding: EdgeInsets.all(10),
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(top: 3),
                                            child: Text(
                                              "Fixed Income",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(top: 20),
                                            child: Text(
                                              "Net Assets",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(top: 5),
                                            child: Text(
                                              "7.07%",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w300),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsets.only(right: 12),
                                  child: Card(
                                    clipBehavior: Clip.hardEdge,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    color: Colors.blue[200],
                                    elevation: 2,
                                    shadowColor: Colors.black,
                                    child: Padding(
                                      padding: EdgeInsets.all(10),
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(top: 3),
                                            child: Text(
                                              "Money Market",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(top: 20),
                                            child: Text(
                                              "Valbury Capital",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(top: 5),
                                            child: Text(
                                              "5.01%",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w300),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(10, 2, 8, 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                  child: Text("+ See more",
                                      style: TextStyle(fontSize: 9))),
                              Expanded(
                                  child: Text("+ See more",
                                      style: TextStyle(fontSize: 9))),
                              Expanded(
                                  child: Text("+ See more",
                                      style: TextStyle(fontSize: 9))),
                              Expanded(
                                  child: Text("+ See more",
                                      style: TextStyle(fontSize: 9))),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  tabbar_view() {
    return Padding(
      padding: EdgeInsets.all(25),
      child: Align(
        alignment: Alignment.topRight,
        child: Container(
          width: MediaQuery.of(context).size.width * 0.6,
          decoration: BoxDecoration(color: Colors.blue[200]),
          child: TabBar(
            controller: _tabController,
            indicator: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.blue.shade300, width: 1)),
            labelColor: Colors.black,
            unselectedLabelColor: Colors.white,
            tabs: _tabs,
          ),
        ),
      ),
    );
  }

  _headerlist() {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.only(right: 25),
          child: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: Colors.green[200],
              shape: BoxShape.circle,
            ),
            child: Text("1",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 43)),
          ),
        ),
        Container(
          color: Colors.green[200],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(12, 12, 12, 6),
                child: Text("Manulife Aset Manajemen Indonesia (MAMI)",
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(12, 6, 12, 12),
                child: Text("IDR 52,422,384,758,579"),
              ),
            ],
          ),
        )
      ],
    );
  }
}
