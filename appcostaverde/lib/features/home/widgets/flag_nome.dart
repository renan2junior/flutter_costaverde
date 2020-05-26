
import 'package:flutter/material.dart';

class FlagHome extends StatelessWidget {
  const FlagHome({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Image.asset("assets/images/flag/flag_pt.png"),
          Image.asset("assets/images/flag/flag_en.png"),
          Image.asset("assets/images/flag/flag_es.png"),
        ],
      ),
    );
  }
}