import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyA5A2M4oI6Iq1DQf3xkL6nrGklDN35FHJU",
            authDomain: "wave-audiobook-uuwb9j.firebaseapp.com",
            projectId: "wave-audiobook-uuwb9j",
            storageBucket: "wave-audiobook-uuwb9j.appspot.com",
            messagingSenderId: "488445525388",
            appId: "1:488445525388:web:85c39ac3c75cff09652aa9",
            measurementId: "G-VZJEVM7FVS"));
  } else {
    await Firebase.initializeApp();
  }
}
