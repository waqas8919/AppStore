import 'package:flutter/material.dart';
import 'package:storeapp_taks/ProductDetails.dart';
import 'package:storeapp_taks/ProductStaw.dart';
import 'package:storeapp_taks/history.dart';

import 'package:storeapp_taks/hotel_app_theme.dart';

class ProductScreen extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<ProductScreen> {
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
        appBar: AppBar(
          backgroundColor: HotelAppTheme.buildLightTheme().backgroundColor,
          elevation: 0.0,
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back,
              size: 28,
              color: Colors.black,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              //getAppBarUI(),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Products',
                      style: TextStyle(fontSize: 35),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25.0, right: 25.0),
                child: Theme(
                  data: Theme.of(context).copyWith(
                    cursorColor: Colors.red,
                    hintColor: Colors.transparent,
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                        focusedBorder: border,
                        border: border,
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.black26,
                        ),
                        hintStyle: TextStyle(color: Colors.black26),
                        filled: true,
                        fillColor: Colors.black12,
                        hintText: 'Search Product'),
                  ),
                ),
              ),
              Padding(
                  padding:
                      EdgeInsets.only(left: 3, top: 15, right: 0, bottom: 0),
                  child: GestureDetector(
                    onTap: () async {
                      await Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => ProductPineDetailPage()));
                    },
                    child: Container(
                      width: double.infinity,
                      height: 100,
                      child: Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.only(
                            left: 5, right: 5, top: 0, bottom: 0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Container(
                                  height: 60,
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Center(
                                        child: Image.asset(
                                      "assets/pineapple.png",
                                      height: 100,
                                      width: 80,
                                    )),
                                  ),
                                ),
                                Column(
                                  children: <Widget>[
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: <Widget>[
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Container(
                                              child: Text(
                                                "The Swan Vietnam Jasmine",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.w600),
                                                textAlign: TextAlign.left,
                                              ),
                                            ),
                                            Container(
                                                child: Row(
                                              children: <Widget>[
                                                Text('Rice'),
                                              ],
                                            )),
                                            SizedBox(
                                              height: 7,
                                            ),
                                            Container(
                                                child: Row(
                                              children: <Widget>[
                                                Text(
                                                  "size: 18gx4",
                                                  style: TextStyle(
                                                    color: Colors.black54,
                                                  ),
                                                  textAlign: TextAlign.left,
                                                ),
                                              ],
                                            )),
                                            SizedBox(
                                              height: 7,
                                            ),
                                            Container(
                                                child: Row(
                                              children: <Widget>[
                                                Text(
                                                  "US \$753xl",
                                                  style: TextStyle(
                                                      color: Colors.red),
                                                  textAlign: TextAlign.left,
                                                ),
                                              ],
                                            )),
                                            SizedBox(
                                              height: 7,
                                            ),
                                            Container(
                                                child: Row(
                                              children: <Widget>[
                                                Text(
                                                  "status:",
                                                  style: TextStyle(),
                                                  textAlign: TextAlign.left,
                                                ),
                                                Text(
                                                  "Buyers has confirmerd order received",
                                                  style: TextStyle(
                                                      color: Colors.black54),
                                                  textAlign: TextAlign.left,
                                                ),
                                              ],
                                            )),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  )),
              Divider(
                height: 15,
              ),
              Padding(
                  padding:
                      EdgeInsets.only(left: 3, top: 15, right: 0, bottom: 0),
                  child: GestureDetector(
                    onTap: () async {
                      await Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => ProductStawDetailPage()));
                    },
                    child: Container(
                      width: double.infinity,
                      height: 100,
                      child: Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.only(
                            left: 5, right: 5, top: 0, bottom: 0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Container(
                                  height: 60,
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Center(
                                        child: Image.asset(
                                      "assets/stawberry.png",
                                      height: 100,
                                      width: 80,
                                    )),
                                  ),
                                ),
                                Column(
                                  children: <Widget>[
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: <Widget>[
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Container(
                                              child: Text(
                                                "The Swan Vietnam Jasmine",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.w600),
                                                textAlign: TextAlign.left,
                                              ),
                                            ),
                                            Container(
                                                child: Row(
                                              children: <Widget>[
                                                Text('Rice'),
                                              ],
                                            )),
                                            SizedBox(
                                              height: 7,
                                            ),
                                            Container(
                                                child: Row(
                                              children: <Widget>[
                                                Text(
                                                  "size: 18gx4",
                                                  style: TextStyle(
                                                    color: Colors.black54,
                                                  ),
                                                  textAlign: TextAlign.left,
                                                ),
                                              ],
                                            )),
                                            SizedBox(
                                              height: 7,
                                            ),
                                            Container(
                                                child: Row(
                                              children: <Widget>[
                                                Text(
                                                  "US \$753xl",
                                                  style: TextStyle(
                                                      color: Colors.red),
                                                  textAlign: TextAlign.left,
                                                ),
                                              ],
                                            )),
                                            SizedBox(
                                              height: 7,
                                            ),
                                            Container(
                                                child: Row(
                                              children: <Widget>[
                                                Text(
                                                  "status:",
                                                  style: TextStyle(),
                                                  textAlign: TextAlign.left,
                                                ),
                                                Text(
                                                  "Buyers has confirmerd order received",
                                                  style: TextStyle(
                                                      color: Colors.black54),
                                                  textAlign: TextAlign.left,
                                                ),
                                              ],
                                            )),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  )),
              Divider(
                height: 15,
              ),
              Padding(
                  padding:
                      EdgeInsets.only(left: 3, top: 15, right: 0, bottom: 0),
                  child: GestureDetector(
                    onTap: () async {
                      await Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => ProductPineDetailPage()));
                    },
                    child: Container(
                      width: double.infinity,
                      height: 100,
                      child: Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.only(
                            left: 5, right: 5, top: 0, bottom: 0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Container(
                                  height: 60,
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Center(
                                        child: Image.asset(
                                      "assets/pineapple.png",
                                      height: 100,
                                      width: 80,
                                    )),
                                  ),
                                ),
                                Column(
                                  children: <Widget>[
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: <Widget>[
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Container(
                                              child: Text(
                                                "The Swan Vietnam Jasmine",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.w600),
                                                textAlign: TextAlign.left,
                                              ),
                                            ),
                                            Container(
                                                child: Row(
                                              children: <Widget>[
                                                Text('Rice'),
                                              ],
                                            )),
                                            SizedBox(
                                              height: 7,
                                            ),
                                            Container(
                                                child: Row(
                                              children: <Widget>[
                                                Text(
                                                  "size: 18gx4",
                                                  style: TextStyle(
                                                    color: Colors.black54,
                                                  ),
                                                  textAlign: TextAlign.left,
                                                ),
                                              ],
                                            )),
                                            SizedBox(
                                              height: 7,
                                            ),
                                            Container(
                                                child: Row(
                                              children: <Widget>[
                                                Text(
                                                  "US \$753xl",
                                                  style: TextStyle(
                                                      color: Colors.red),
                                                  textAlign: TextAlign.left,
                                                ),
                                              ],
                                            )),
                                            SizedBox(
                                              height: 7,
                                            ),
                                            Container(
                                                child: Row(
                                              children: <Widget>[
                                                Text(
                                                  "status:",
                                                  style: TextStyle(),
                                                  textAlign: TextAlign.left,
                                                ),
                                                Text(
                                                  "Buyers has confirmerd order received",
                                                  style: TextStyle(
                                                      color: Colors.black54),
                                                  textAlign: TextAlign.left,
                                                ),
                                              ],
                                            )),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  )),
              Divider(
                height: 15,
              ),
              Padding(
                  padding:
                      EdgeInsets.only(left: 3, top: 15, right: 0, bottom: 0),
                  child: GestureDetector(
                    onTap: () async {
                      await Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => ProductStawDetailPage()));
                    },
                    child: Container(
                      width: double.infinity,
                      height: 100,
                      child: Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.only(
                            left: 5, right: 5, top: 0, bottom: 0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Container(
                                  height: 60,
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Center(
                                        child: Image.asset(
                                      "assets/stawberry.png",
                                      height: 100,
                                      width: 80,
                                    )),
                                  ),
                                ),
                                Column(
                                  children: <Widget>[
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: <Widget>[
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Container(
                                              child: Text(
                                                "The Swan Vietnam Jasmine",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.w600),
                                                textAlign: TextAlign.left,
                                              ),
                                            ),
                                            Container(
                                                child: Row(
                                              children: <Widget>[
                                                Text('Rice'),
                                              ],
                                            )),
                                            SizedBox(
                                              height: 7,
                                            ),
                                            Container(
                                                child: Row(
                                              children: <Widget>[
                                                Text(
                                                  "size: 18gx4",
                                                  style: TextStyle(
                                                    color: Colors.black54,
                                                  ),
                                                  textAlign: TextAlign.left,
                                                ),
                                              ],
                                            )),
                                            SizedBox(
                                              height: 7,
                                            ),
                                            Container(
                                                child: Row(
                                              children: <Widget>[
                                                Text(
                                                  "US \$753xl",
                                                  style: TextStyle(
                                                      color: Colors.red),
                                                  textAlign: TextAlign.left,
                                                ),
                                              ],
                                            )),
                                            SizedBox(
                                              height: 7,
                                            ),
                                            Container(
                                                child: Row(
                                              children: <Widget>[
                                                Text(
                                                  "status:",
                                                  style: TextStyle(),
                                                  textAlign: TextAlign.left,
                                                ),
                                                Text(
                                                  "Buyers has confirmerd order received",
                                                  style: TextStyle(
                                                      color: Colors.black54),
                                                  textAlign: TextAlign.left,
                                                ),
                                              ],
                                            )),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  )),
            ],
          ),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.only(left: 20, right: 25, bottom: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              GestureDetector(
                onTap: () async {
                  await Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => HistoryScreen()));
                },
                child: Container(
                  height: 40,
                  width: 80,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.red),
                  child: Center(
                      child:
                          Text('NEXT', style: TextStyle(color: Colors.white))),
                ),
              )
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
            )
          ],
        ),
      ),
    );
  }
}
