import 'package:flutter/material.dart';
import 'package:storeapp_taks/CouponCode.dart';
import 'package:storeapp_taks/hotel_app_theme.dart';

class MyStoreScreen extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyStoreScreen> {
  final border = OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(90.0)),
      borderSide: BorderSide(
        color: Colors.transparent,
      ));
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
                      'My Store',
                      style: TextStyle(fontSize: 35),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25.0, right: 25.0),
                child: Theme(
                  data: Theme.of(context).copyWith(
                    cursorColor: Colors.red,
                    hintColor: Colors.transparent,
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                        focusedBorder: border,
                        border: border,
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.black26,
                        ),
                        hintStyle: TextStyle(color: Colors.black26),
                        filled: true,
                        fillColor: Colors.black12,
                        hintText: 'Search Store'),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 25.0, right: 25.0, bottom: 20.0, top: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Published',
                      style: TextStyle(fontSize: 30),
                    )
                  ],
                ),
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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Target Store',
                                style: TextStyle(fontSize: 15),
                              ),
                              Container(
                                height: 80,
                                width: 150,
                                decoration: BoxDecoration(
                                  color: Colors.black12,
                                  image: DecorationImage(
                                    image: new AssetImage('assets/camera.png'),
                                    fit: BoxFit.contain,
                                  ),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              )
                            ],
                          ),
                          Divider(
                            height: 35,
                            color: Colors.black54,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 0,
                              right: 0,
                              bottom: 0,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  'Change Store Status',
                                  style: TextStyle(fontSize: 15),
                                ),
                                Icon(Icons.keyboard_arrow_right)
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 0,
                              right: 0,
                              bottom: 0,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Publish or UnPublish your Store',
                                  style: TextStyle(
                                      fontSize: 13, color: Colors.black54),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 25.0, right: 25.0, bottom: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'UnPublished',
                      style: TextStyle(fontSize: 30),
                    )
                  ],
                ),
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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Target Store',
                                style: TextStyle(fontSize: 15),
                              ),
                              Container(
                                height: 80,
                                width: 150,
                                decoration: BoxDecoration(
                                  color: Colors.black12,
                                  image: DecorationImage(
                                    image: new AssetImage('assets/camera.png'),
                                    fit: BoxFit.contain,
                                  ),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              )
                            ],
                          ),
                          Divider(
                            height: 35,
                            color: Colors.black54,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 0,
                              right: 0,
                              bottom: 0,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  'Change Store Status',
                                  style: TextStyle(fontSize: 15),
                                ),
                                Icon(Icons.keyboard_arrow_right)
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 0,
                              right: 0,
                              bottom: 0,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Publish or UnPublish your Store',
                                  style: TextStyle(
                                      fontSize: 13, color: Colors.black54),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )),
              ),
              SizedBox(
                height: 10,
              ),
           
              Padding(
                padding: const EdgeInsets.only(left: 18.0, right: 18.0),
                child: GestureDetector(
                  onTap: () async {
                    await Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => CouponCodeScreen()));
                  },
                  child: Container(
                      height: 60,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: Colors.white70,
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Center(
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 0,
                                  right: 0,
                                  bottom: 0,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Icon(Icons.add, color: Colors.red),
                                    Text(
                                      'Add Another Store',
                                      style: TextStyle(fontSize: 15),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      )),
                ),
              ),
           
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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
              child: Icon(Icons.add),
            )
          ],
        ),
      ),
    );
  }
}
