import 'package:appcostaverde/features/cidade/widgets/menu_ilha.dart';
import 'package:flutter/material.dart';

class CidadePage extends StatefulWidget {
  CidadePage({Key key}) : super(key: key);

  @override
  _CidadePageState createState() => _CidadePageState();
}

class _CidadePageState extends State<CidadePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset("assets/images/banner.jpeg"),
      ),
      drawer: _menuDrawer(),
    );
  }

  _menuDrawer() {
    return MenuIlha();
  }
  
}

