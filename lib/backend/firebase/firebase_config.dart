import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDKyd5fa2k2BvP4Jr1R6c3bI45niNbze2M",
            authDomain: "smartgridv2.firebaseapp.com",
            projectId: "smartgridv2",
            storageBucket: "smartgridv2.appspot.com",
            messagingSenderId: "191135381788",
            appId: "1:191135381788:web:117cf0feb1b86fab3b62d9",
            measurementId: "G-6R48Y67902"));
  } else {
    await Firebase.initializeApp();
  }
}
