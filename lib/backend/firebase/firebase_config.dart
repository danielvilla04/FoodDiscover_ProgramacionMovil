import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDlzDKD7h_nkbwtaYkWuke6RHISlZUStCU",
            authDomain: "food-discover-project-tii09i.firebaseapp.com",
            projectId: "food-discover-project-tii09i",
            storageBucket: "food-discover-project-tii09i.appspot.com",
            messagingSenderId: "222863684265",
            appId: "1:222863684265:web:5dc36e0be0d3577c5c2fb8"));
  } else {
    await Firebase.initializeApp();
  }
}
