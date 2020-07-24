import 'package:flutter/material.dart';
import 'package:storeapp_taks/hotel_app_theme.dart';
import 'package:storeapp_taks/storeLocated.dart';

class CouponCodeScreen extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<CouponCodeScreen> {
  final border = OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(90.0)),
      borderSide: BorderSide(
        color: Colors.transparent,
      ));
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.blueGrey[50],
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              getAppBarUI(),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Coupon Codes',
                      style: TextStyle(fontSize: 35),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 25.0, right: 25.0, bottom: 20.0, top: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Active',
                      style: TextStyle(fontSize: 30),
                    )
                  ],
                ),
              ),
            
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Container(
                    height: 120,
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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                '100PERCENT',
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w600),
                              ),
                              Text(
                                '10%',
                                style:
                                    TextStyle(fontSize: 15, color: Colors.red),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 0,
                              right: 0,
                              bottom: 0,
                              top: 10,
                            ),
                            child: Row(
                              children: <Widget>[
                                Icon(Icons.alarm,
                                    color: Colors.black54, size: 15),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'Valid till 25th June',
                                  style: TextStyle(
                                      fontSize: 13, color: Colors.black54),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 0, right: 0, bottom: 0, top: 10),
                            child: Row(
                              children: <Widget>[
                                Icon(Icons.group,
                                    color: Colors.black54, size: 15),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  '200 users max',
                                  style: TextStyle(
                                      fontSize: 13, color: Colors.black54),
                                ),
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
                    height: 120,
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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'XW3YT',
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w600),
                              ),
                              Text(
                                '30%',
                                style:
                                    TextStyle(fontSize: 15, color: Colors.red),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 0,
                              right: 0,
                              bottom: 0,
                              top: 10,
                            ),
                            child: Row(
                              children: <Widget>[
                                Icon(Icons.alarm,
                                    color: Colors.black54, size: 15),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'Valid till 25th June',
                                  style: TextStyle(
                                      fontSize: 13, color: Colors.black54),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 0, right: 0, bottom: 0, top: 10),
                            child: Row(
                              children: <Widget>[
                                Icon(Icons.group,
                                    color: Colors.black54, size: 15),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  '200 users max',
                                  style: TextStyle(
                                      fontSize: 13, color: Colors.black54),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 25.0, right: 25.0, bottom: 20.0, top: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Expired',
                      style: TextStyle(fontSize: 30),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Container(
                    height: 120,
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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                '30PERCENT',
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w600),
                              ),
                              Text(
                                '10%',
                                style:
                                    TextStyle(fontSize: 15, color: Colors.red),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 0,
                              right: 0,
                              bottom: 0,
                              top: 10,
                            ),
                            child: Row(
                              children: <Widget>[
                                Icon(Icons.alarm,
                                    color: Colors.black54, size: 15),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'Valid till 25th June',
                                  style: TextStyle(
                                      fontSize: 13, color: Colors.black54),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 0, right: 0, bottom: 0, top: 10),
                            child: Row(
                              children: <Widget>[
                                Icon(Icons.group,
                                    color: Colors.black54, size: 15),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  '200 users max',
                                  style: TextStyle(
                                      fontSize: 13, color: Colors.black54),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 18.0, right: 18.0, bottom: 10),
                child: GestureDetector(
                  onTap: () async {
                    await Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => StoreLocatedPage()));
                  },
                  child: Container(
                      height: 60,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: Colors.white70,
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Center(
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 0,
                                  right: 0,
                                  bottom: 0,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Icon(Icons.add, color: Colors.red),
                                    Text(
                                      'Add Another Coupon',
                                      style: TextStyle(fontSize: 15),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget getAppBarUI() {
    return Container(
      decoration: BoxDecoration(
        color: HotelAppTheme.buildLightTheme().backgroundColor,
      ),
      child: Padding(
        padding: EdgeInsets.only(
            top: MediaQuery.of(context).padding.top, left: 8, right: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              alignment: Alignment.centerLeft,
              width: AppBar().preferredSize.height + 40,
              height: AppBar().preferredSize.height,
              child: Material(
                color: HotelAppTheme.buildLightTheme().backgroundColor,
                child: InkWell(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(32.0),
                  ),
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.arrow_back,
                      size: 37,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              width: AppBar().preferredSize.height + 40,
              height: AppBar().preferredSize.height,
              child: Icon(Icons.add),
            )
          ],
        ),
      ),
    );
  }
}
