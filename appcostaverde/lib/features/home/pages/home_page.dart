import 'package:appcostaverde/features/home/widgets/banner_home.dart';
import 'package:appcostaverde/features/home/widgets/flag_nome.dart';
import 'package:appcostaverde/features/home/widgets/menu_home.dart';
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
          "assets/images/home/b41.jpg",
          fit: BoxFit.cover,
        ),
        _container(),
      ],
    );
  }

  _container() {
    return Container(
      padding: EdgeInsets.all(16),
      height: 400,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          FlagHome(),
          BannerHome(),
          MenuHome(),
        ],
      ),
    );
  }

}


