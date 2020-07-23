import 'package:dashed_container/dashed_container.dart';
import 'package:flutter/material.dart';
import 'package:storeapp_taks/coverphoto.dart';
import 'package:storeapp_taks/discountcode.dart';
import 'package:storeapp_taks/hotel_app_theme.dart';

class StoreLogoPage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<StoreLogoPage> {
  TextEditingController Textedit = new TextEditingController();
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
                    'Add a Store Logo',
                    style: TextStyle(fontSize: 35),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 3),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    child: Text(
                      'Add your Store logo! Make sure your logo size should be 90x90',
                      style: TextStyle(fontSize: 17, color: Colors.grey),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 45,
            ),
            Align(
              alignment: Alignment.center,
              child: DashedContainer(
                child: Container(
                    height: 250.0,
                    width: 250.0,
                    decoration: BoxDecoration(shape: BoxShape.circle),
                    child: Icon(
                      Icons.photo_camera,
                      size: 120,
                    )),
                dashColor: Colors.black,
                boxShape: BoxShape.circle,
                dashedLength: 30.0,
                blankLength: 6.0,
                strokeWidth: 2.0,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 3),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Add a Store logo',
                    style: TextStyle(fontSize: 17, color: Colors.red),
                  )
                ],
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
                          builder: (context) => CoverLogoPage()));
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
