import 'package:flutter/material.dart';
import 'package:storeapp_taks/GeoLocation/PinMapsScreen.dart';
import 'package:storeapp_taks/hotel_app_theme.dart';

class Fields_Screen extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Fields_Screen> {
  TextEditingController streetcontroller = new TextEditingController();
  TextEditingController NYcontroller = new TextEditingController();
  TextEditingController TNcontroller = new TextEditingController();
  TextEditingController LAcontroller = new TextEditingController();
  TextEditingController FLcontroller = new TextEditingController();
  TextEditingController CAcontroller = new TextEditingController();

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
                  controller: streetcontroller,
                  textAlignVertical: TextAlignVertical.bottom,
                  decoration: InputDecoration(
                    hintStyle: TextStyle(color: Colors.black),
                    hintText: 'N',
                    suffixIcon: IconButton(
                        icon: Icon(Icons.close),
                        iconSize: 17,
                        onPressed: () {
                          streetcontroller.clear();
                        }),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'New York,NY,USA',
                      style: TextStyle(fontSize: 18),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: TextField(
                  controller: NYcontroller,
                  textAlignVertical: TextAlignVertical.bottom,
                  decoration: InputDecoration(
                    hintStyle: TextStyle(color: Colors.black),
                    suffixIcon: IconButton(
                        icon: Icon(Icons.close),
                        iconSize: 17,
                        onPressed: () {
                          NYcontroller.clear();
                        }),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Nashville,TN,USA',
                      style: TextStyle(fontSize: 18),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: TextField(
                  controller: TNcontroller,
                  textAlignVertical: TextAlignVertical.bottom,
                  decoration: InputDecoration(
                    hintStyle: TextStyle(color: Colors.black),
                    suffixIcon: IconButton(
                        icon: Icon(Icons.close),
                        iconSize: 17,
                        onPressed: () {
                          TNcontroller.clear();
                        }),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'New Orleans,LA,USA',
                      style: TextStyle(fontSize: 18),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: TextField(
                  controller: LAcontroller,
                  textAlignVertical: TextAlignVertical.bottom,
                  decoration: InputDecoration(
                    hintStyle: TextStyle(color: Colors.black),
                    suffixIcon: IconButton(
                        icon: Icon(Icons.close),
                        iconSize: 17,
                        onPressed: () {
                          LAcontroller.clear();
                        }),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Naples,FL,USA',
                      style: TextStyle(fontSize: 18),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: TextField(
                  controller: FLcontroller,
                  textAlignVertical: TextAlignVertical.bottom,
                  decoration: InputDecoration(
                    hintStyle: TextStyle(color: Colors.black),
                    suffixIcon: IconButton(
                        icon: Icon(Icons.close),
                        iconSize: 17,
                        onPressed: () {
                          FLcontroller.clear();
                        }),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Newport Beach,CA,USA',
                      style: TextStyle(fontSize: 18),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: TextField(
                  controller: LAcontroller,
                  textAlignVertical: TextAlignVertical.bottom,
                  decoration: InputDecoration(
                    hintStyle: TextStyle(color: Colors.black),
                    suffixIcon: IconButton(
                        icon: Icon(Icons.close),
                        iconSize: 17,
                        onPressed: () {
                          LAcontroller.clear();
                        }),
                  ),
                ),
              ),
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
                  await Navigator.push(context,
                      new MaterialPageRoute(builder: (context) => MapsPage()));
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
                      Icons.close,
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
