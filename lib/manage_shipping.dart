import 'package:flutter/material.dart';
import 'package:storeapp_taks/hotel_app_theme.dart';
import 'package:storeapp_taks/store_descrip.dart';

class ManageShipping extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<ManageShipping> {
  TextEditingController Textedit = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
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
                      'MANAGE SHIPPING',
                      style: TextStyle(fontSize: 30),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        'Configure shipping charges to be calculated during Checkout',
                        style: TextStyle(fontSize: 20, color: Colors.grey),
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
                    Expanded(
                      child: Text(
                        'Distance Unit',
                        style: TextStyle(fontSize: 15),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        'Choose Shipping Calculation based on miles or km',
                        style: TextStyle(fontSize: 15, color: Colors.grey),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
                child: TextField(
                  controller: Textedit,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        'Flat Base Price',
                        style: TextStyle(fontSize: 15),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        'Lets you charge a fixed price for shipping',
                        style: TextStyle(fontSize: 15, color: Colors.grey),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
                child: TextField(
                  controller: Textedit,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        'Shipping Fee per km/mile',
                        style: TextStyle(fontSize: 15),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        'if you set 0 here and flat base price 0 it means user is eligible for free shipping.',
                        style: TextStyle(fontSize: 15, color: Colors.grey),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                child: TextField(
                  controller: Textedit,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () async {
                        await Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (context) => Store_Description()));
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
