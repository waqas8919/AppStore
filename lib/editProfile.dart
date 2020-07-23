import 'package:flutter/material.dart';
import 'package:storeapp_taks/OrderDetail.dart';

import 'package:storeapp_taks/hotel_app_theme.dart';
import 'package:storeapp_taks/products.dart';
import 'package:storeapp_taks/storeStatus.dart';

class EditProfilePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<EditProfilePage> {
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
                  'Save',
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
                padding: const EdgeInsets.all(25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        "Edit Personal Info",
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
                            Text(
                              'Edit Profile',
                              style: TextStyle(color: Colors.black54),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Firstname',
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
                    hintText: 'john',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Lastname',
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
                    hintText: 'Doe',
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
                  controller: flatController,
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
                      'Email',
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
                    hintText: 'johndoe@hotmail.com',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Phone Numnber',
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
                    hintText: '+1347 272 0543',
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
                  await Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => ProductScreen()));
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
