import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyAbNmssi1JDeKRzSMsEMmUWR2bNxZW6cQw",
            authDomain: "leilao-495bd.firebaseapp.com",
            projectId: "leilao-495bd",
            storageBucket: "leilao-495bd.appspot.com",
            messagingSenderId: "766782140247",
            appId: "1:766782140247:web:d902b6a8fe648bd1845812"));
  } else {
    await Firebase.initializeApp();
  }
}
