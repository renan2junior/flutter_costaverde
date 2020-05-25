import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(),
    );
  }

  _body() {
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Image.asset(
          "assets/images/home/deck.jpg",
          fit: BoxFit.fill,
        ),
        _menu(),
      ],
    );
  }

  _menu() {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Image.asset(
                  "assets/images/home/menu_ilha.png",
                  scale: 2,
                ),
                Image.asset("assets/images/home/menu_angra.png"),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Image.asset("assets/images/home/menu_ilha.png"),
                Image.asset("assets/images/home/menu_angra.png"),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Image.asset("assets/images/home/menu_ilha.png"),
                Image.asset("assets/images/home/menu_angra.png"),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Image.asset("assets/images/home/menu_ilha.png"),
                Image.asset("assets/images/home/menu_angra.png"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
