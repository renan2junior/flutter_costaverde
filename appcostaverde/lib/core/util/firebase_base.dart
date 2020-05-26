import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';

class FirebaseBase {
  DatabaseReference ref;

  Future<DatabaseReference> getApi() async {
    const id = "1:120896006613:android:4bbe59de1c1a9a5b7d355c";
    const urlDatabse = "https://ilhagrandeapp.firebaseio.com";
    const key = "AIzaSyDzXPrHFSSi3VJkQi0kr-SsGZE4vPMRkEM";
    FirebaseApp app = await FirebaseApp.configure(
      name: 'appcostaverde',
      options: const FirebaseOptions(
        googleAppID: id,
        apiKey: key,
        databaseURL: urlDatabse,
      ),
    );
    final FirebaseDatabase database = FirebaseDatabase(app: app);
    DatabaseReference ref = database.reference();
    return ref;
  }
}