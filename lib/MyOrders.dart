import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:storeapp_taks/Utils/MyDrawer.dart';
import 'package:storeapp_taks/manage_shipping.dart';

class MyOrders extends StatefulWidget {
  @override
  _MyOrdersState createState() => _MyOrdersState();
}

class _MyOrdersState extends State<MyOrders>
    with SingleTickerProviderStateMixin {
  Box<String> usersBox;
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  TabController _tabController;
  ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = new ScrollController();
    _tabController = new TabController(vsync: this, length: 3);
    _tabController.addListener(_handleTabSelection);
  }

  void _handleTabSelection() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: MyDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: GestureDetector(
          onTap: () {
            _scaffoldKey.currentState.openDrawer();
          },
          child: Icon(
            Icons.sort,
            size: 28,
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 15, right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'My Orders',
                    style: TextStyle(fontSize: 35),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TabBar(
              controller: _tabController,
              indicatorColor: Colors.transparent,
              tabs: <Widget>[
                Tab(
                  child: Container(
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color:
                          _tabController.index == 0 ? Colors.red : Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "New",
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color:
                          _tabController.index == 1 ? Colors.red : Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Processing",
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color:
                          _tabController.index == 2 ? Colors.red : Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Delivered",
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: <Widget>[OrdersInfo(), OrdersInfo(), OrdersInfo()],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget OrdersInfo() {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Container(
                  height: 250,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Colors.white70,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              'ORDER # 1234',
                              style: TextStyle(fontSize: 19),
                            ),
                            Text(
                              '24 June',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              'Payment Type: ',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 15),
                            ),
                            Text('Card', style: TextStyle(fontSize: 15)),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              'Total Amount: ',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 15),
                            ),
                            Text('\$277.0', style: TextStyle(fontSize: 15)),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              'Product: ',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 15,
                              ),
                            ),
                            Expanded(
                                child: Text(
                                    'milk bottle xl,Nivea Deodorant fresh Active spray',
                                    style: TextStyle(fontSize: 15))),
                          ],
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              GestureDetector(
                                onTap: () async {
                                  await Navigator.push(
                                      context,
                                      new MaterialPageRoute(
                                          builder: (context) =>
                                              ManageShipping()));
                                },
                                child: Container(
                                  width: 100,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.green),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "Accept",
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                  width: 100,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.red),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "Reject",
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                  width: 100,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.grey[200]),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "Details",
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Container(
                  height: 250,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Colors.white70,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              'ORDER # 1234',
                              style: TextStyle(fontSize: 19),
                            ),
                            Text(
                              '24 June',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              'Payment Type: ',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 15),
                            ),
                            Text('Card', style: TextStyle(fontSize: 15)),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              'Total Amount: ',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 15),
                            ),
                            Text('\$277.0', style: TextStyle(fontSize: 15)),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              'Product: ',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 15,
                              ),
                            ),
                            Expanded(
                                child: Text(
                                    'milk bottle xl,Nivea Deodorant fresh Active spray',
                                    style: TextStyle(fontSize: 15))),
                          ],
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              GestureDetector(
                                onTap: () async {
                                  await Navigator.push(
                                      context,
                                      new MaterialPageRoute(
                                          builder: (context) =>
                                              ManageShipping()));
                                },
                                child: Container(
                                  width: 100,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.green),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "Accept",
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                  width: 100,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.red),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "Reject",
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                  width: 100,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.grey[200]),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "Details",
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
