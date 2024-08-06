import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_delivery_app/BakedRice.dart';
import 'package:food_delivery_app/Cart.dart';
import 'package:food_delivery_app/profile.dart';
import 'package:food_delivery_app/HomePage.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _HomePageState();
}

class _HomePageState extends State<MainScreen> {
  int SelectedIndex = 0;

  List<Widget> screens = [HomePage(), Cart(), Profile()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF2F2F2),
      body: screens[SelectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "")
        ],
        iconSize: 39,
        selectedItemColor: Color(0xFFFF470B),
        unselectedItemColor: Color(0xFFC4C4C4),
        currentIndex: SelectedIndex,
        onTap: (value) {
          setState(() {
            SelectedIndex = value;
          });
        },
        elevation: 30,
      ),
    );
  }
}
