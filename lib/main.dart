
import 'package:flutter/material.dart';

import 'Demo/SplashScreen.dart';
import 'package:firebase_core/firebase_core.dart';


void main() {

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      title: 'Revisar App',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}


