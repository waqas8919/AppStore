import 'package:flutter/material.dart';
import 'package:storeapp_taks/themes/light_color.dart';
import 'package:storeapp_taks/themes/theme.dart';
import 'package:storeapp_taks/extentions.dart';
import 'package:storeapp_taks/title_text.dart';

class ProductPineDetailPage extends StatefulWidget {
  @override
  _ProductDetailPageState createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductPineDetailPage>
    with TickerProviderStateMixin {
  AnimationController controller;
  Animation<double> animation;
  int _quantity = 0;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 300));
    animation = Tween<double>(begin: 0, end: 1).animate(
        CurvedAnimation(parent: controller, curve: Curves.easeInToLinear));
    controller.forward();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  bool isLiked = true;

  Widget _appBar() {
    return Container(
      padding: AppTheme.padding,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          _icon(
            Icons.arrow_back,
            color: Colors.red,
            size: 25,
            padding: 5,
            isOutLine: true,
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          _icon(
            isLiked ? Icons.favorite_border : Icons.favorite_border,
            color: LightColor.red,
            size: 25,
            padding: 5,
            isOutLine: true,
            onPressed: () {},
          ),
        ],
      ),
    );
  }

  Widget _icon(
    IconData icon, {
    Color color = LightColor.iconColor,
    double size = 20,
    double padding = 10,
    bool isOutLine = false,
    Function onPressed,
  }) {
    return Container(
      height: 40,
      width: 40,
      padding: EdgeInsets.all(padding),
      // margin: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        border: Border.all(
            color: LightColor.iconColor,
            style: isOutLine ? BorderStyle.solid : BorderStyle.none),
        borderRadius: BorderRadius.all(Radius.circular(19)),
        color: isOutLine
            ? LightColor.lightGrey
            : Theme.of(context).backgroundColor,
      ),
      child: Icon(icon, color: color, size: size),
    ).ripple(() {
      if (onPressed != null) {
        onPressed();
      }
    }, borderRadius: BorderRadius.all(Radius.circular(13)));
  }

  Widget _productImage() {
    return Stack(
      alignment: Alignment.topCenter,
      children: <Widget>[
        Container(
          height: 300,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/pineapple.png'),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Padding(padding: EdgeInsets.all(8.0), child: _appBar()),
      ],
    );
  }

  Widget _detailWidget() {
    return DraggableScrollableSheet(
      maxChildSize: .8,
      initialChildSize: .63,
      minChildSize: .63,
      builder: (context, scrollController) {
        return Container(
          padding: AppTheme.padding.copyWith(bottom: 0),
          decoration: BoxDecoration(color: Colors.white),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                SizedBox(height: 10),
                Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Expanded(
                          child: TitleText(
                        text: "The swan jasmine vietnam rice 5kg",
                        fontSize: 19,
                        color: Colors.black54,
                      )),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                _availableSize(),
                SizedBox(
                  height: 10,
                ),
                Divider(
                  height: 20,
                ),
                _description(),
                SizedBox(
                  height: 10,
                ),
                Divider(
                  height: 20,
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _availableSize() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          children: <Widget>[
            Text(
              "\$9.99 / Piece",
              style: TextStyle(
                  fontSize: 15, color: Colors.red, fontWeight: FontWeight.w600),
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Text(
              "60% OFF",
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.black54,
                  fontWeight: FontWeight.w600),
            ),
          ],
        )
      ],
    );
  }

  String descText =
      "Rice is a staple food for more than half of the world’s population and it’s easy to see why. Rice pairs easily with a number of dishes from curries to puddings, plus it is rich in micronutrients, minerals and vitamins.";
  bool descTextShowFlag = false;

  Widget _description() {
    return Container(
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(
                'Description',
                style: TextStyle(
                    fontSize: 24,
                    color: Colors.black,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Text(descText,
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black54),
              maxLines: descTextShowFlag ? 4 : 2,
              textAlign: TextAlign.start),
          InkWell(
            onTap: () {
              setState(() {
                descTextShowFlag = !descTextShowFlag;
              });
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                descTextShowFlag
                    ? Text(
                        'less',
                        style: TextStyle(color: Colors.redAccent),
                      )
                    : Text('more', style: TextStyle(color: Colors.redAccent))
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            colors: [
              Color(0xfffbfbfb),
              Color(0xfff7f7f7),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          )),
          child: Stack(
            children: <Widget>[
              _productImage(),
              _detailWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
