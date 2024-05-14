import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyALWZDBGxEShMUk8O_QlNXt6P8F3kmPPvc",
            authDomain: "domiapp-10.firebaseapp.com",
            projectId: "domiapp-10",
            storageBucket: "domiapp-10.appspot.com",
            messagingSenderId: "155238274470",
            appId: "1:155238274470:web:f9aed01eb1150bd1d0eb67"));
  } else {
    await Firebase.initializeApp();
  }
}
