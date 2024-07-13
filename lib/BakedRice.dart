import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pretty_animated_buttons/pretty_animated_buttons.dart';

class BakedRice extends StatefulWidget {
  const BakedRice({super.key});

  @override
  State<BakedRice> createState() => _BakedRiceState();
}

class _BakedRiceState extends State<BakedRice> {
  String action = 'Add to cart';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFF2F2F2),
        appBar: AppBar(
          backgroundColor: Color(0xFFf2f2f2),
          actions: [
            Padding(
                padding: EdgeInsets.only(right: 30),
                child: Icon(Icons.favorite_outline_rounded))
          ],
        ),
        body: Padding(
            padding: EdgeInsets.only(left: 27, right: 27),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 10, bottom: 0),
                  child: CircleAvatar(
                    radius: 120,
                    backgroundImage: AssetImage('assets/BakedRice.jpg'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 140, vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 10,
                        height: 10,
                        decoration: BoxDecoration(
                            color: Color(0xFFfa4a0c),
                            borderRadius: BorderRadius.circular(60)),
                      ),
                      Container(
                        width: 10,
                        height: 10,
                        decoration: BoxDecoration(
                            color: Color(0xFFc4c4c4),
                            borderRadius: BorderRadius.circular(60)),
                      ),
                      Container(
                        width: 10,
                        height: 10,
                        decoration: BoxDecoration(
                            color: Color(0xFFc4c4c4),
                            borderRadius: BorderRadius.circular(60)),
                      ),
                      Container(
                        width: 10,
                        height: 10,
                        decoration: BoxDecoration(
                            color: Color(0xFFc4c4c4),
                            borderRadius: BorderRadius.circular(60)),
                      )
                    ],
                  ),
                ),
                Text(
                  'Baked Rice',
                  style: TextStyle(fontFamily: 'Poppins', fontSize: 30),
                ),
                Text(
                  'EGP 60.00',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Color(0xFFff470b)),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 12, top: 55),
                      child: Text(
                        'Describtion',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.black),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 12),
                      child: Text(
                        'Savor our exquisite Baked Rice, featuring aromatic rice baked to perfection with a blend of exotic spices and tender, marinated chicken. Each bite promises a harmonious medley of flavors, making it a must-try culinary delight.',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 12,
                            color: Colors.black),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 12),
                      child: Text(
                        'Delivery',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.black),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 12),
                      child: Text(
                        'Delivered within 30mins from your location* if placed now.\nCupon Available.',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 12,
                            color: Colors.black),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 12),
                      child: Text.rich(TextSpan(
                          text: 'Reviews  ',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          children: <TextSpan>[
                            TextSpan(
                                text: '4.4/5',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal,
                                    color: Color(0xFFff470b))),
                            TextSpan(
                                text: '  see all reviews',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 11,
                                    fontWeight: FontWeight.normal,
                                    color: Color(0xFF9a9a9d))),
                          ])),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 170),
                  child: PrettyFuzzyButton(
                      radius: 90,
                      originalColor: Color(0xFFfa4a0c),
                      secondaryColor: Color(0xFF12ab3d),
                      label: action,
                      onPressed: () {
                        setstate() {
                          action = 'Added';
                        }
                      }),
                )
              ],
            )));
  }
}