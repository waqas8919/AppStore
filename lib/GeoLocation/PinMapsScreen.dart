import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong/latlong.dart';
import 'package:geolocator/geolocator.dart';
import 'package:storeapp_taks/OrderDetail.dart';

import 'getLocation.dart';
import 'package:storeapp_taks/hotel_app_theme.dart';

class MapsPage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

MapController mapcontroller = MapController();

List<Marker> _markers = [];

class _MyHomePageState extends State<MapsPage> {
  TextEditingController Textedit = new TextEditingController();
  final Geolocator geolocator = Geolocator()..forceAndroidLocationManager;
  Position user;
  LatLng loc;
  String _currentAddress;

  @override
  Widget build(BuildContext context) {
    _getCurrentLocation();
    double lat = 0.0;
    double long = 0.0;

    getLocation().then((position) {
      user = position;
      setMarkers(user);
    });

    if (user == null) {
      lat = 31.7538406;
      long = 72.9207986;
    } else {
      lat = user.latitude;
      long = user.longitude;
    }

    loc = LatLng(lat, long);

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
                  'Save and Exit',
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
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        'Is The Pin In the Right Place?',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.w600),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 35,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        _currentAddress != null ? _currentAddress : " ",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w600),
                      ),
                    ),
                    Text(
                      'Edit',
                      style: TextStyle(color: Colors.red, fontSize: 15),
                    )
                  ],
                ),
              ),
              Container(
                height: 600,
                child: FlutterMap(
                  mapController: mapcontroller,
                  options: MapOptions(
                    minZoom: 16.0,
                    center: loc,
                  ),
                  layers: [
                    TileLayerOptions(
                      // for OpenStreetMaps:
                      urlTemplate:
                          'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
                      subdomains: ['a', 'b', 'c'],
                    ),
                    MarkerLayerOptions(
                      markers: _markers,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(right: 15, bottom: 15),
          child: FloatingActionButton.extended(
            onPressed: () async {
              await Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (context) => OrderDetailScreen()));
            },
            label: Text('Yes,Thats Right'),
            backgroundColor: Colors.red,
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

  void setMarkers(pos) {
    LatLng point = LatLng(pos.latitude, pos.longitude);

    List<Marker> markers = [
      Marker(
        width: 45.0,
        height: 45.0,
        point: point,
        builder: (context) => Container(
          child: IconButton(
            icon: Icon(Icons.location_on),
            color: Colors.blue,
            iconSize: 45.0,
            onPressed: () {},
          ),
        ),
      ),
    ];

    setState(() {
      _markers.clear();
      _markers = markers;
    });
  }

  _getCurrentLocation() {
    geolocator
        .getCurrentPosition(desiredAccuracy: LocationAccuracy.best)
        .then((Position position) {
      setState(() {
        user = position;
      });

      _getAddressFromLatLng();
    }).catchError((e) {
      print(e);
    });
  }

  _getAddressFromLatLng() async {
    try {
      List<Placemark> p = await geolocator.placemarkFromCoordinates(
          user.latitude, user.longitude);

      Placemark place = p[0];

      setState(() {
        _currentAddress =
            "${place.locality}, ${place.postalCode}, ${place.country}";
      });
    } catch (e) {
      print(e);
    }
  }
}
