import 'package:appcostaverde/features/cidade/widgets/header_drawer.dart';
import 'package:appcostaverde/features/home/pages/home_page.dart';
import 'package:flutter/material.dart';

class MenuIlha extends StatefulWidget {
  const MenuIlha({
    Key key,
  }) : super(key: key);

  @override
  _MenuIlhaState createState() => _MenuIlhaState();
}

class _MenuIlhaState extends State<MenuIlha> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.blue,
        child: ListView(
          children: <Widget>[
            HeaderDrawer("assets/images/cidades/ilha.jpg", "Ilha GRande"),
            GestureDetector(
              onTap: () => {},
              child: ListTile(
                title: Text(
                  "Home",
                  style: TextStyle(color: Colors.white),
                ),
                leading: Icon(Icons.home, color: Colors.white),
              ),
            ),
            Divider(
              color: Colors.white,
            ),
            ListTile(
              title: Text("Hospedagem", style: TextStyle(color: Colors.white),),
              leading: Icon(Icons.local_hotel, color: Colors.white),
            ),
            Divider(
              color: Colors.white,
            ),
            ListTile(
              title: Text("Bares e Restaurantes", style: TextStyle(color: Colors.white),),
              leading: Icon(Icons.local_dining, color: Colors.white),
            ),
            Divider(
              color: Colors.white,
            ),
            ListTile(
              title: Text("Passeios", style: TextStyle(color: Colors.white),),
              leading: Icon(Icons.directions_boat, color: Colors.white),
            ),
            Divider(
              color: Colors.white,
            ),
            ListTile(
              title: Text("Mergulho", style: TextStyle(color: Colors.white),),
              leading: Icon(Icons.pool, color: Colors.white),
            ),
            Divider(
              color: Colors.white,
            ),
            ListTile(
              title: Text("Transfer", style: TextStyle(color: Colors.white),),
              leading: Icon(Icons.local_taxi, color: Colors.white),
            ),
            Divider(
              color: Colors.white,
            ),
            ListTile(
              title: Text("Praias", style: TextStyle(color: Colors.white),),
              leading: Icon(Icons.beach_access, color: Colors.white),
            ),
            Divider(
              color: Colors.white,
            ),
            ListTile(
              title: Text("Cachoeiras", style: TextStyle(color: Colors.white),),
              leading: Icon(Icons.local_see, color: Colors.white),
            ),
            Divider(
              color: Colors.white,
            ),
            ListTile(
              title: Text("Monumentos Históricos", style: TextStyle(color: Colors.white),),
              leading: Icon(Icons.spa, color: Colors.white),
            ),
            Divider(
              color: Colors.white,
            ),
            ListTile(
              title: Text("Camping", style: TextStyle(color: Colors.white),),
              leading: Icon(Icons.terrain, color: Colors.white),
            ),
            Divider(
              color: Colors.white,
            ),
            ListTile(
              title: Text("Fé", style: TextStyle(color: Colors.white),),
              leading: Icon(Icons.location_city, color: Colors.white),
            ),
            Divider(
              color: Colors.white,
            ),
            ListTile(
              title: Text("História", style: TextStyle(color: Colors.white),),
              leading: Icon(Icons.book, color: Colors.white),
            ),
            Divider(
              color: Colors.white,
            ),
            ListTile(
              title: Text("Acessos", style: TextStyle(color: Colors.white),),
              leading: Icon(Icons.room, color: Colors.white),
            ),
            Divider(
              color: Colors.white,
            ),
            ListTile(
              title: Text("Estacionamentos", style: TextStyle(color: Colors.white),),
              leading: Icon(Icons.local_car_wash, color: Colors.white),
            ),
            Divider(
              color: Colors.white,
            ),
            ListTile(
              title: Text("Telefones úteis", style: TextStyle(color: Colors.white),),
              leading: Icon(Icons.phone, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
  _onClickHome() {
    Navigator.pop(context);
    Navigator.push(
      context,
      MaterialPageRoute(builder: (BuildContext context) {
        return HomePage();
      }),
    );
  }
}
