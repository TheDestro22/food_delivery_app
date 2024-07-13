import 'package:flutter/material.dart';
import 'package:food_delivery_app/HomePage.dart';
import 'package:food_delivery_app/LoginSignUpPage.dart';
import 'package:food_delivery_app/BakedRice.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Session',
      theme: ThemeData.light(),
      home: Login(),
      debugShowCheckedModeBanner: false,
    );
  }
}
