import 'package:flutter/material.dart';
import 'package:storeapp_taks/OrderDetail.dart';

import 'package:storeapp_taks/hotel_app_theme.dart';
import 'package:storeapp_taks/storeStatus.dart';

class StoreLocatedPage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<StoreLocatedPage> {
  TextEditingController regionController = new TextEditingController();
  TextEditingController streetController = new TextEditingController();
  TextEditingController flatController = new TextEditingController();
  TextEditingController cityController = new TextEditingController();
  TextEditingController countryController = new TextEditingController();
  TextEditingController postcodeController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: HotelAppTheme.buildLightTheme().backgroundColor,
          elevation: 0.0,
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.close,
              size: 28,
              color: Colors.black,
            ),
          ),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 15.0),
              child: Center(
                child: Text(
                  'Save and Exit',
                  style: TextStyle(color: Colors.black, fontSize: 17),
                ),
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        "Where's your Store Located?",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.w600),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        "Your store will appear to that country which you set here.",
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                            color: Colors.black54),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 45.0, right: 45.0, top: 20, bottom: 20.0),
                  child: new RaisedButton(
                    color: Colors.transparent,
                    elevation: 0.0,
                    child: new Text(
                      "User Current Location",
                      style: TextStyle(color: Colors.red),
                    ),
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        side: BorderSide(color: Colors.red)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "or enter your address",
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Country/Region',
                      style: TextStyle(fontSize: 18),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: TextField(
                  controller: regionController,
                  textAlignVertical: TextAlignVertical.bottom,
                  decoration: InputDecoration(
                    hintStyle: TextStyle(color: Colors.black54),
                    hintText: 'United States',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Street',
                      style: TextStyle(fontSize: 18),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: TextField(
                  controller: streetController,
                  textAlignVertical: TextAlignVertical.bottom,
                  decoration: InputDecoration(
                    hintStyle: TextStyle(color: Colors.black54),
                    hintText: 'e.g 20 Deans Yd',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Flat,Suite,etc, (Optional)',
                      style: TextStyle(fontSize: 18),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: TextField(
                  controller: flatController,
                  textAlignVertical: TextAlignVertical.bottom,
                  decoration: InputDecoration(
                    hintStyle: TextStyle(color: Colors.black54),
                    hintText: 'e.g Apart. 2',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'City',
                      style: TextStyle(fontSize: 18),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: TextField(
                  controller: cityController,
                  textAlignVertical: TextAlignVertical.bottom,
                  decoration: InputDecoration(
                    hintStyle: TextStyle(color: Colors.black54),
                    hintText: 'e.g San Fransisco',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Country',
                      style: TextStyle(fontSize: 18),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: TextField(
                  controller: countryController,
                  textAlignVertical: TextAlignVertical.bottom,
                  decoration: InputDecoration(
                    hintStyle: TextStyle(color: Colors.black54),
                    hintText: 'e.g CA',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Postcode',
                      style: TextStyle(fontSize: 18),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                child: TextField(
                  controller: postcodeController,
                  textAlignVertical: TextAlignVertical.bottom,
                  decoration: InputDecoration(
                    hintStyle: TextStyle(color: Colors.black54),
                    hintText: 'e.g 94103',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () async {
                        await Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (context) => StoreStatusPage()));
                      },
                      child: Container(
                        height: 40,
                        width: 80,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.red),
                        child: Center(
                            child: Text('NEXT',
                                style: TextStyle(color: Colors.white))),
                      ),
                    )
                  ],
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
