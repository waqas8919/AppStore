import 'package:flutter/material.dart';
import 'package:storeapp_taks/StoreEdit.dart';
import 'package:storeapp_taks/discountcode.dart';
import 'package:storeapp_taks/hotel_app_theme.dart';

class StoreStatusPage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<StoreStatusPage> {
  TextEditingController publishcontroller = new TextEditingController();
  TextEditingController Unpublishcontroller = new TextEditingController();

  bool publish = false;
  bool unpublish = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Column(
          children: <Widget>[
            getAppBarUI(),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Store Status',
                    style: TextStyle(fontSize: 35),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
              child: TextField(
                controller: publishcontroller,
                textAlignVertical: TextAlignVertical.bottom,
                onChanged: (String value) {
                  publish = true;
                },
                decoration: InputDecoration(
                  hintStyle: TextStyle(color: Colors.black54),
                  hintText: 'Publish',
                  suffixIcon: IconButton(
                      icon: Icon(Icons.check),
                      iconSize: 17,
                      color: Colors.red,
                      onPressed: () {}),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
              child: TextField(
                controller: Unpublishcontroller,
                textAlignVertical: TextAlignVertical.bottom,
                onChanged: (String value) {
                  unpublish = true;
                },
                decoration: InputDecoration(
                  hintStyle: TextStyle(color: Colors.black54),
                  hintText: 'UnPublish',
                ),
              ),
            ),
          ],
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
                          builder: (context) => StoreEditPage()));
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
