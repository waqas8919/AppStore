import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'package:storeapp_taks/FieldsScreen.dart';
import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:storeapp_taks/hotel_app_theme.dart';

class CountryScreen extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<CountryScreen> {
  Map _countries = new Map();

  void _getData() async {
    var url = 'http://country.io/names.json';
    var response = await http.get(url);

    if (response.statusCode == 200) {
      setState(() => _countries = json.decode(response.body));
      print('Loaded ${_countries.length} countries');
    }
  }

  bool _value = false;
  bool _value1 = false;
  @override
  Widget build(BuildContext context) {
    //_getData();
    return Container(
      child: Scaffold(
        body: Column(
          children: <Widget>[
            getAppBarUI(),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15.0, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  new Text(
                    'Country',
                    style: new TextStyle(fontSize: 35),
                  ),
                ],
              ),
            ),
            new Expanded(
                child: Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15.0),
              child: new ListView.separated(
                separatorBuilder: (context, index) => Divider(
                  color: Colors.black,
                ),
                padding: EdgeInsets.only(bottom: 15, top: 15),
                itemCount: _countries.length,
                itemBuilder: (BuildContext context, int index) {
                  String key = _countries.keys.elementAt(index);
                  return new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      new Text(
                        _countries[key],
                        style: TextStyle(fontSize: 20),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _value = !_value;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: _value ? Colors.red : Colors.grey[200]),
                          child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: _value
                                  ? Icon(
                                      Icons.check,
                                      size: 12.0,
                                      color: Colors.white,
                                    )
                                  : Icon(
                                      Icons.check_box_outline_blank,
                                      size: 12.0,
                                      color: Colors.grey[200],
                                    )),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ))
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
                          builder: (context) => Fields_Screen()));
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

  @override
  void initState() {
    _getData();
  }
}
