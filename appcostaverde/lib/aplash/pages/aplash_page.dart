import 'package:appcostaverde/home/pages/home_page.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  SplashPage({Key key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  void initState() {
    
    super.initState();

    Future.delayed(Duration(seconds: 3), (){
      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
        return HomePage();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: CircularProgressIndicator(),
      ),
      color: Colors.red,
    );
  }
}
