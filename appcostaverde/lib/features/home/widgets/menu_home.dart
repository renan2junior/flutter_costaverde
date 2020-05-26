import 'package:flutter/material.dart';
import 'package:appcostaverde/core/util/constants.dart';

import 'item_nemu_home.dart';

class MenuHome extends StatefulWidget {
  const MenuHome({
    Key key,
  }) : super(key: key);

  @override
  _MenuHomeState createState() => _MenuHomeState();
}

class _MenuHomeState extends State<MenuHome> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 400,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  ItemMenuHome(
                      "assets/images/home/menu_ilha.png", Tipo.Ilha.toString()),
                  ItemMenuHome("assets/images/home/menu_parati.png",
                      Tipo.Parati.toString()),
                ],
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  ItemMenuHome("assets/images/home/menu_angra.png",
                      Tipo.Angra.toString()),
                  ItemMenuHome("assets/images/home/menu_mangaratiba.png",
                      Tipo.Mangaratiba.toString()),
                ],
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  ItemMenuHome("assets/images/home/menu_lanchas.png",
                      Tipo.Lanchas.toString()),
                  ItemMenuHome(
                      "assets/images/home/menu_top.png", Tipo.Top.toString()),
                ],
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  ItemMenuHome("assets/images/home/menu_reservas.png",
                      Tipo.Reservas.toString()),
                  ItemMenuHome("assets/images/home/menu_experiencias.png",
                      Tipo.Experiencias.toString()),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
