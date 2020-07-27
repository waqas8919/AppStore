import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:hive/hive.dart';
import 'package:storeapp_taks/Utils/CounterStorage.dart';

class MyDrawer extends StatefulWidget {
  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      child: ListView(
        padding: EdgeInsets.all(10),
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        children: <Widget>[
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ClipOval(
                  child: Image.network(
                "https://cdn5.vectorstock.com/i/1000x1000/53/24/profile-icon-male-emotion-avatar-man-cartoon-vector-15175324.jpg",
                width: 80,
                height: 80,
              )),
              Text('Jack Darcey',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w600)),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Divider(
            thickness: 2,
          ),
          SizedBox(
            height: 20,
          ),
          //manage orders
          Container(
            padding: EdgeInsets.only(left: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Icon(
                  Icons.home,
                  color: Colors.grey,
                  size: 30,
                ),
                SizedBox(
                  width: 10,
                ),
                InkWell(
                  child: Text(
                    "Home",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  onTap: () {},
                ),
              ],
            ),
          ),

          SizedBox(
            height: 30,
          ),
          // manage vehicle
          Container(
            padding: EdgeInsets.only(left: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Icon(
                  Icons.directions_bus,
                  size: 30,
                  color: Colors.grey,
                ),
                SizedBox(
                  width: 10,
                ),
                InkWell(
                  child: Text(
                    "Inbox",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  onTap: () {},
                ),
              ],
            ),
          ),

          SizedBox(
            height: 30,
          ),
          //manage documents
          Container(
            padding: EdgeInsets.only(left: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Icon(
                  Icons.store,
                  size: 30,
                  color: Colors.grey,
                ),
                SizedBox(
                  width: 10,
                ),
                InkWell(
                  child: Text(
                    "Stores",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  onTap: () {},
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            padding: EdgeInsets.only(left: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Icon(
                  Icons.history,
                  size: 30,
                  color: Colors.grey,
                ),
                SizedBox(
                  width: 10,
                ),
                InkWell(
                  child: Text(
                    "History",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  onTap: () {},
                ),
              ],
            ),
          ),

          SizedBox(
            height: 30,
          ),
          // profile
          Container(
            padding: EdgeInsets.only(left: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Icon(
                  Icons.person,
                  size: 30,
                  color: Colors.grey,
                ),
                SizedBox(
                  width: 10,
                ),
                InkWell(
                  child: Text(
                    "Profile",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  onTap: () {},
                ),
              ],
            ),
          ),

          SizedBox(
            height: 30,
          ),
          // logout
          Container(
            padding: EdgeInsets.only(left: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Image.asset(
                  "assets/ic_logout.png",
                  width: 30,
                ),
                SizedBox(
                  width: 10,
                ),
                InkWell(
                  child: Text(
                    "Logout",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  onTap: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
