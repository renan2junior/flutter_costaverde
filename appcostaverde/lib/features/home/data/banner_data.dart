import 'dart:async';

import 'package:appcostaverde/core/util/firebase_base.dart';
import 'package:firebase_database/firebase_database.dart';

import 'banner_app.dart';

class BannerData extends FirebaseBase {
  StreamController<List<BannerApp>> _controller =
      StreamController<List<BannerApp>>();

  Stream<List<BannerApp>> get stream => _controller.stream;

  Future<List<BannerApp>> getDados() async {
    ref = await getApi();
    List<BannerApp> banners = [];
    try {
      ref.child("Banner").once().then((DataSnapshot snapshot) {
        Map list = snapshot.value;
        var listValues = list.values.toList();
        var listKeys = list.keys.toList();
        for (int i = 0; i < listValues.length; i++) {
          banners.add(BannerApp.fromMap({...listValues[i], "id": listKeys[i]}));
        }
        _controller.add(banners);
        return banners;
      });
    } catch (error) {
      print(error);
      return null;
    }
  }

  dispose() {
    _controller.close();
  }
}
