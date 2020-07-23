import 'package:flutter/material.dart';
import 'package:storeapp_taks/hotel_app_theme.dart';
import 'package:storeapp_taks/manage_shipping.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
                      'My Orders',
                      style: TextStyle(fontSize: 35),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  GestureDetector(
                    onTap: () async {
                      await Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => ManageShipping()));
                    },
                    child: Container(
                      width: 100,
                      height: 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.red),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "New",
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
                          color: Colors.white),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Processing",
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
                          color: Colors.white),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Delivered",
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
             
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Container(
                    height: 200,
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
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                  width: 100,
                                  height: 30,
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
                                      color: Colors.white),
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
                        ],
                      ),
                    )),
              ),
             
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Container(
                    height: 200,
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
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                  width: 100,
                                  height: 30,
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
                                      color: Colors.white),
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
                        ],
                      ),
                    )),
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
        // boxShadow: <BoxShadow>[
        //   BoxShadow(
        //       color: Colors.grey.withOpacity(0.2),
        //       offset: const Offset(0, 2),
        //       blurRadius: 4.0),
        // ],
      ),
      child: Padding(
        padding: EdgeInsets.only(
            top: MediaQuery.of(context).padding.top, left: 8, right: 8),
        child: Row(
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
                      Icons.sort,
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

class HexColor extends Color {
  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));

  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll('#', '');
    if (hexColor.length == 6) {
      hexColor = 'FF' + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }
}
