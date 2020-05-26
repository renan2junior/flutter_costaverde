import 'package:flutter/material.dart';

class BannerHome extends StatelessWidget {
  const BannerHome({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Image.asset("assets/images/banner.jpeg"),
    );
  }
}
