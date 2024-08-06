import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_delivery_app/HomePage.dart';
import 'package:food_delivery_app/main_screen.dart';
import 'package:simple_animated_button/simple_animated_button.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Center(
            child: Text(
          "Orders",
          style: TextStyle(fontFamily: 'Poppins', fontSize: 18),
        )),
      ),
      body: Center(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/Avocado.png',
                width: 180,
                height: 180,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 5),
                child: Text(
                  "No orders Yet",
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 28,
                      fontWeight: FontWeight.w900),
                ),
              ),
              Text(
                "HIt the orange button down\n below to Create an order",
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 17,
                    fontWeight: FontWeight.normal),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFFFA4A0C),
                        fixedSize: Size(314, 70),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        )),
                    //  ButtonStyle(
                    //   backgroundColor:
                    //       MaterialStateProperty.all(Color(0xFFFA4A0C)),
                    //   fixedSize: MaterialStateProperty.all(Size(314, 70)),
                    // ),
                    onPressed: () {
                      setState(() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MainScreen()));
                      });
                    },
                    child: Text(
                      "Start ordering",
                      style: TextStyle(
                          color: Color(0xFFF6F6F9),
                          fontFamily: 'Poppins',
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    )),
              )
            ]),
      ),
    );
  }
}
