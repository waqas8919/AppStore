import 'package:flutter/material.dart';
import 'package:storeapp_taks/AddDiscount.dart';
import 'package:storeapp_taks/hotel_app_theme.dart';
import 'package:storeapp_taks/store_descrip.dart';

class DiscountCodePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<DiscountCodePage> {
  TextEditingController Textedit = new TextEditingController();
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
              Icons.arrow_back,
              size: 28,
              color: Colors.black,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              //getAppBarUI(),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Edit Discount Code',
                      style: TextStyle(fontSize: 30),
                    )
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        'Promotion Code / Voucher',
                        style: TextStyle(
                            fontSize: 21, fontWeight: FontWeight.w600),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        'Enter the code for the discount',
                        style: TextStyle(fontSize: 20, color: Colors.grey),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        'For Example : 20Percent',
                        style: TextStyle(fontSize: 20, color: Colors.grey),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
                child: TextField(
                  controller: Textedit,
                  textAlignVertical: TextAlignVertical.bottom,
                  decoration: InputDecoration(
                      hintText: '10Percent',
                      hintStyle: TextStyle(color: Colors.black)),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        'Price Disccount',
                        style: TextStyle(
                            fontSize: 21, fontWeight: FontWeight.w600),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        'The Discount will apply according',
                        style: TextStyle(fontSize: 20, color: Colors.grey),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        'to the percentage',
                        style: TextStyle(fontSize: 20, color: Colors.grey),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
                child: TextField(
                  controller: Textedit,
                  textAlignVertical: TextAlignVertical.bottom,
                  decoration: InputDecoration(
                      hintText: '20%',
                      hintStyle: TextStyle(color: Colors.black)),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        'Maximum Uses',
                        style: TextStyle(
                            fontSize: 21, fontWeight: FontWeight.w600),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        'How many users acan user this coupon',
                        style: TextStyle(fontSize: 20, color: Colors.grey),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        'Enter 10 means,10 users can user it.',
                        style: TextStyle(fontSize: 20, color: Colors.grey),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
                child: TextField(
                  controller: Textedit,
                  textAlignVertical: TextAlignVertical.bottom,
                  decoration: InputDecoration(
                      hintText: '100',
                      hintStyle: TextStyle(color: Colors.black)),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        'Expiration Date',
                        style: TextStyle(
                            fontSize: 21, fontWeight: FontWeight.w600),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        'Select the expiration date for the',
                        style: TextStyle(fontSize: 20, color: Colors.grey),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        'Discount',
                        style: TextStyle(fontSize: 20, color: Colors.grey),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                child: TextField(
                  controller: Textedit,
                  textAlignVertical: TextAlignVertical.bottom,
                  decoration: InputDecoration(
                      hintText: '25-5-2020',
                      hintStyle: TextStyle(color: Colors.black)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () async {
                        await Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (context) => AddDiscountCodePage()));
                      },
                      child: Container(
                        height: 40,
                        width: 80,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.red),
                        child: Center(
                            child: Text('NEXT',
                                style: TextStyle(color: Colors.white))),
                      ),
                    )
                  ],
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
