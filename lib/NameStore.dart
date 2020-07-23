import 'package:flutter/material.dart';
import 'package:storeapp_taks/discountcode.dart';
import 'package:storeapp_taks/hotel_app_theme.dart';

class Name_Store extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Name_Store> {
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
                    'Name Your Store',
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
                  Text(
                    'Add your Store name here',
                    style: TextStyle(fontSize: 20, color: Colors.grey),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 3),
                child: TextField(
                  controller: Textedit,
                  maxLines: 1,
                  decoration: new InputDecoration(
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      contentPadding: EdgeInsets.only(bottom: 11, right: 15),
                      hintText: 'Add a title'),
                  style: TextStyle(fontSize: 23, color: Colors.grey),
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
                          builder: (context) => DiscountCodePage()));
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
