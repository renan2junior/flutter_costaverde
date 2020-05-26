import 'package:flutter/material.dart';

class HeaderDrawer extends StatefulWidget {
  // const HeaderDrawer({
  //   Key key,
  // }) : super(key: key);
  String srcImage;

  String title;

  HeaderDrawer(this.srcImage, this.title);

  @override
  _HeaderDrawerState createState() => _HeaderDrawerState();
}

class _HeaderDrawerState extends State<HeaderDrawer> {
  String get srcImage => widget.srcImage;
  String get title => widget.title;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          Image.asset(srcImage),
          Container(
            alignment: Alignment.center,
            width: double.infinity,
            color: Colors.black38,
            child: Text(title,
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                )),
          ),
        ],
      ),
    );
  }
}
