import 'package:flutter/material.dart';
import 'package:medicalapp/cart.dart';
import 'package:medicalapp/home.dart';
import 'package:medicalapp/productdetail.dart';
import 'package:medicalapp/profile.dart';
import 'package:medicalapp/login.dart';
import 'package:medicalapp/splash.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
    );
  }
}