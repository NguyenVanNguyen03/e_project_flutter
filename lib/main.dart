import 'package:fashion_ecommerce_app/screens/login/constants.dart';
import 'package:fashion_ecommerce_app/screens/onbording/onbording.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

// import 'main_wrapper.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: FirebaseOptions(
        apiKey: "AIzaSyAmT2J3s5ADJIGjLHdUzgeXUCFMFt1BTXo",
        appId: "1:779907141914:web:d3c7d60ee13a79e3049ca3",
        messagingSenderId: "779907141914",
        projectId: "e-project-firebase",
        // Your web Firebase config options
      ),
    );
  } else {
    await Firebase.initializeApp();
  }
  runApp(
    MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        textTheme: TextTheme(
          bodyText1: TextStyle(color: kTextColor),
          bodyText2: TextStyle(color: kTextColor),
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: Onbording(),
    ),
  );
}
