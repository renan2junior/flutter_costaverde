import 'package:appcostaverde/features/cidade/pages/cidade_page.dart';
import 'package:flutter/material.dart';

class ItemMenuHome extends StatefulWidget {
  // const ItemMenuHome({
  //   Key key,
  // }) : super(key: key);

  String srcImage;
  String tipo;

  ItemMenuHome(this.srcImage, this.tipo);

  @override
  _ItemMenuHomeState createState() => _ItemMenuHomeState();
}

class _ItemMenuHomeState extends State<ItemMenuHome> {

  String get srcImage => widget.srcImage;
  String get tipo => widget.tipo;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _onClickMenu(tipo),
      child: Image.asset(
        srcImage,
        scale: 2,
      ),
    );
  }
   _onClickMenu(String tipo) {
    print(tipo);
    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
      return CidadePage();
    }));
  }
}
