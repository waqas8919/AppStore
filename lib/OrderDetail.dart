import 'package:flutter/material.dart';
import 'package:storeapp_taks/discountcode.dart';
import 'package:storeapp_taks/hotel_app_theme.dart';
import 'package:storeapp_taks/myStore.dart';

class OrderDetailScreen extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<OrderDetailScreen> {
  TextEditingController Textedit = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: HotelAppTheme.buildLightTheme().backgroundColor,
          elevation: 0.0,
          title: Text('Order Details'),
          centerTitle: true,
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
                height: 10,
              ),
              OrderInfo()
            ],
          ),
        ),
      ),
    );
  }

  Widget OrderInfo() {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(
                'status:',
                style: TextStyle(color: Colors.black54),
              ),
              Text('Finished')
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: <Widget>[
              Text(
                'OrderID:',
                style: TextStyle(color: Colors.black54),
              ),
              Text(
                '103033541788568',
                style: TextStyle(color: Colors.black54),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: <Widget>[
              Text(
                'Order Date:',
                style: TextStyle(color: Colors.black54),
              ),
              Text(
                '2019-06-16 15:16',
                style: TextStyle(color: Colors.black54),
              ),
            ],
          ),
          Divider(
            height: 40,
            thickness: 20,
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: <Widget>[
              Text(
                'Customer',
                style: TextStyle(fontWeight: FontWeight.w600),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: <Widget>[
              new Container(
                  width: 90.0,
                  height: 90.0,
                  decoration: new BoxDecoration(
                      shape: BoxShape.circle,
                      image: new DecorationImage(
                          fit: BoxFit.fill,
                          image: new NetworkImage(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTec9MHEWqcyuNPy2rPKccy3wPVighgh4tPEw&usqp=CAU")))),
              SizedBox(
                width: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text('Jack Darcey'),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        '+1 321-212-0544',
                        style: TextStyle(color: Colors.black54),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        height: 25,
                        child: RaisedButton(
                          onPressed: () async {
                            await Navigator.push(
                                context,
                                new MaterialPageRoute(
                                    builder: (context) => MyStoreScreen()));
                          },
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0),
                              side: BorderSide(color: Colors.red)),
                          child: Text(
                            'Send Message',
                            style: TextStyle(color: Colors.white),
                          ),
                          color: Colors.red,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: <Widget>[
              Text(
                'Delivery Address',
                style: TextStyle(fontWeight: FontWeight.w600),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: Text(
                  'THE SPIRE OFFICE NO 714, 150 FEET RING RD,NEAR PARIJAT PARTY PLOT,RAJKOT GUJRAT 360006, INDIA',
                  style: TextStyle(color: Colors.black54, fontSize: 18),
                ),
              )
            ],
          ),
          Divider(
            height: 40,
            thickness: 20,
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Seller: Dayoff Store',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              Icon(
                Icons.keyboard_arrow_right,
                color: Colors.black54,
              )
            ],
          ),
          Divider(
            height: 20,
            color: Colors.black,
          ),
          Padding(
              padding: EdgeInsets.only(left: 3, top: 0, right: 0, bottom: 0),
              child: Container(
                width: double.infinity,
                height: 120,
                child: Container(
                  alignment: Alignment.center,
                  padding:
                      EdgeInsets.only(left: 5, right: 5, top: 0, bottom: 0),
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
                                              fontWeight: FontWeight.w600),
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
                                            style: TextStyle(color: Colors.red),
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
                                            "Buyers has confirmerd",
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
              )),
          Divider(
            height: 5,
            color: Colors.black,
          ),
          Padding(
              padding: EdgeInsets.only(left: 3, top: 10, right: 0, bottom: 0),
              child: Container(
                width: double.infinity,
                height: 120,
                child: Container(
                  alignment: Alignment.center,
                  padding:
                      EdgeInsets.only(left: 5, right: 5, top: 0, bottom: 0),
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
                                              fontWeight: FontWeight.w600),
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
                                            style: TextStyle(color: Colors.red),
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
                                            "Buyers has confirmerd",
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
              )),
          Divider(
            height: 25,
            color: Colors.grey[200],
            thickness: 7,
          ),
          Row(
            children: <Widget>[
              Text(
                'Order Summary (2 Items)',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Subtotal:',
                style: TextStyle(color: Colors.black54),
              ),
              Text(
                'US \$ 3.64',
              ),
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Shipping fee:',
                style: TextStyle(color: Colors.black54),
              ),
              Text(
                'US \$ 0.00',
              ),
            ],
          ),
          Divider(
            height: 15,
            color: Colors.black54,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Total:',
                style: TextStyle(color: Colors.black54),
              ),
              Text(
                'US \$ 3.64',
                style: TextStyle(color: Colors.red),
              ),
            ],
          ),
        ],
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
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.arrow_back,
                      size: 30,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: Text(
                  'Order Details',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 22,
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
