import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCiUgzvptWSMYjNhgbV5VZ5T5ZyXzG4Xg0",
            authDomain: "plantpurify-f125f.firebaseapp.com",
            projectId: "plantpurify-f125f",
            storageBucket: "plantpurify-f125f.appspot.com",
            messagingSenderId: "283872932313",
            appId: "1:283872932313:web:7308846e31739c3e1029c8",
            measurementId: "G-PKTWRE2CM7"));
  } else {
    await Firebase.initializeApp();
  }
}
