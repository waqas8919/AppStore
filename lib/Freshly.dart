import 'package:flutter/material.dart';
import 'package:storeapp_taks/StoreEdit.dart';
import 'package:storeapp_taks/editProfile.dart';

class FreshlyPage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<FreshlyPage> {
  bool publish = false;
  bool unpublish = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.red,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'freshly',
                    style: TextStyle(
                        fontSize: 60,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "You're Ready to",
                    style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 6),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Publish!",
                    style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    child: Text(
                      "Congratulations! your store is setup now. its time to upload products in the store. If you'd like to update your store settings,you can easily do that after you hit publish!.",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
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
                      width: 130,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white),
                      child: Center(
                          child: Text('Publish Store',
                              style: TextStyle(color: Colors.red))),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  GestureDetector(
                    onTap: () async {
                      await Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => EditProfilePage()));
                    },
                    child: Container(
                      height: 40,
                      width: 130,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          shape: BoxShape.rectangle,
                          border: Border.all(color: Colors.white),
                          color: Colors.red),
                      child: Center(
                          child: Text('Make Changes',
                              style: TextStyle(color: Colors.white))),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
