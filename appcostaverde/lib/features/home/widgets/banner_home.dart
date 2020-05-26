import 'package:appcostaverde/features/home/data/banner_app.dart';
import 'package:appcostaverde/features/home/data/banner_data.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class BannerHome extends StatefulWidget {
  const BannerHome({
    Key key,
  }) : super(key: key);

  @override
  _BannerHomeState createState() => _BannerHomeState();
}

class _BannerHomeState extends State<BannerHome> {

  final model = BannerData();

  @override
  void initState() {
    super.initState();
    load();
  }

  load() async {
    await BannerData().getDados();
  }

  @override
  Widget build(BuildContext context) {
    return ContainerBanner();
  }

  
  BannerCarousel(List<String> imgList) {
    return Container(
        child: CarouselSlider(
      options: CarouselOptions(
        autoPlay: true,
        autoPlayInterval: Duration(seconds: 3),
        autoPlayAnimationDuration: Duration(milliseconds: 800),
        enlargeCenterPage: true,
        viewportFraction:1.0,
      ),
      items: imgList
          .map((item) => Container(
                child: Center(
                    child: Image.network(item, fit: BoxFit.fitWidth, width:double.infinity )),
              ))
          .toList(),
    ));
  }

  ContainerBanner() {
    return Container(
      width: double.infinity,
      height: 50,
      child: StreamBuilder(
          stream: model.stream,
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return Text("Ocorreu um erro na conexão.");
            }
            if (!snapshot.hasData) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else {
              List<String> _images = [];
              List<BannerApp> lista = snapshot.data;
              lista.forEach((element) {
                if (element.UrlImagem != null &&
                    element.UrlImagem.isNotEmpty &&
                    element.UrlImagem.length > 10) {
                  _images.add(element.UrlImagem);
                }
              });
              return BannerCarousel(_images);
            }
          }),
    );
  }

  @override
  void dispose() {
    super.dispose();
    model.dispose();
  }


}
