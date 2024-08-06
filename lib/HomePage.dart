import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_delivery_app/BakedRice.dart';
import 'package:food_delivery_app/Cart.dart';
import 'package:food_delivery_app/profile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> DishNames = [
    'Baked Rice',
    'Rice Bowl',
    'Fried Rice',
    'Spicy Salmon'
  ];

  List<String> DishPics = [
    'assets/BakedRice.jpg',
    'assets/RiceBowl.jpg',
    'assets/FriedRice.jpg',
    'assets/SpicySalmon.jpg',
  ];

  List<String> DishPrices = [
    'EGP 60.00',
    'EGP 80.00',
    'EGP 100.00',
    'EGP 150.00'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF2F2F2),
      appBar: AppBar(
        backgroundColor: Color(0xFFF2F2F2),
        leading: Padding(
            padding: EdgeInsets.only(left: 27),
            child: Icon(
              Icons.list,
              size: 30,
            )),
        title: ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Color(0xFFEFEEEE))),
            onPressed: () {
              setState(() {});
            },
            child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              Padding(
                padding: EdgeInsets.only(),
                child:
                    Container(width: 24, height: 24, child: Icon(Icons.search)),
              ),
              Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    'Search',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 16,
                        fontWeight: FontWeight.w900,
                        color: Color(0xFF000000)),
                  ))
            ])),
        actions: [
          Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(90),
                color: Color(0xFFEFEEEE),
              ),
              margin: EdgeInsets.only(right: 27),
              width: 50,
              height: 50,
              child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Profile()));
                  },
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/User.png'),
                    backgroundColor: Color(0xFFEFEEEE),
                  ))),
        ],
      ),
      body: Padding(
          padding: EdgeInsets.only(left: 27, right: 27),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xFFFA4A0C),
                          ),
                          width: 188,
                          height: 138,
                          margin: EdgeInsets.only(top: 15),
                          child: Padding(
                            padding: EdgeInsets.only(left: 20, top: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      '25%',
                                      style: TextStyle(
                                          fontSize: 45,
                                          color: Colors.white,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Padding(
                                        padding: EdgeInsets.only(bottom: 10),
                                        child: Text(
                                          '  off',
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.white,
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.bold),
                                        ))
                                  ],
                                ),
                                Text.rich(TextSpan(
                                    text: 'on all ',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Inter',
                                        fontSize: 12),
                                    children: <TextSpan>[
                                      TextSpan(
                                          text: 'sushi',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w900)),
                                      TextSpan(text: ' orders \nacross app*')
                                    ])),
                                Text('Valid till 25th Dec, 2023',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12))
                              ],
                            ),
                          )),
                      Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xFFFA4A0C),
                          ),
                          width: 188,
                          height: 138,
                          margin: EdgeInsets.only(top: 15),
                          child: Padding(
                            padding: EdgeInsets.only(left: 20, top: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      '50%',
                                      style: TextStyle(
                                          fontSize: 45,
                                          color: Colors.white,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w900),
                                    ),
                                    Padding(
                                        padding: EdgeInsets.only(bottom: 10),
                                        child: Text(
                                          '  off',
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.white,
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w900),
                                        ))
                                  ],
                                ),
                                Text.rich(TextSpan(
                                    text: 'on all ',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Inter',
                                        fontSize: 12),
                                    children: <TextSpan>[
                                      TextSpan(
                                          text: 'Mac n Cheese',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w900)),
                                      TextSpan(text: ' \norders across app*')
                                    ])),
                                Text('Valid till 25th Dec, 2023',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12))
                              ],
                            ),
                          )),
                    ]),
                Container(
                    width: 500,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xFF333333),
                    ),
                    height: 138,
                    margin: EdgeInsets.only(top: 15, bottom: 15),
                    child: Padding(
                      padding: EdgeInsets.only(left: 20, top: 25),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text.rich(TextSpan(
                              text: 'Use code\n',
                              style: TextStyle(
                                  fontFamily: 'Inter',
                                  color: Colors.white,
                                  fontSize: 18),
                              children: <TextSpan>[
                                TextSpan(
                                    text: 'iLovemyfood',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w900,
                                        fontSize: 23)),
                                TextSpan(text: '\nto get '),
                                TextSpan(
                                    text: '10% off',
                                    style: TextStyle(color: Color(0xFFFA4A0C))),
                                TextSpan(text: ' on your orders '),
                              ])),
                        ],
                      ),
                    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'Foods',
                      style: TextStyle(fontSize: 18, color: Color(0xFFFA4A0C)),
                    ),
                    Text('Drinks',
                        style:
                            TextStyle(fontSize: 18, color: Color(0xFF9A9A9D))),
                    Text('Snacks',
                        style:
                            TextStyle(fontSize: 18, color: Color(0xFF9A9A9D))),
                    Text('Sauce',
                        style:
                            TextStyle(fontSize: 18, color: Color(0xFF9A9A9D)))
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 5),
                  child: Container(
                    margin: EdgeInsets.only(top: 4),
                    decoration: BoxDecoration(
                      color: Color(0xFFFA4A0C),
                      borderRadius: BorderRadius.circular(45),
                    ),
                    width: 90,
                    height: 4,
                  ),
                ),
                Expanded(
                    child: ListView.separated(
                        itemBuilder: (context, index) {
                          return Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                                side: BorderSide(color: Colors.white)),
                            elevation: 0.3,
                            color: Colors.white,
                            margin: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 0),
                            child: Padding(
                              padding: EdgeInsets.all(5),
                              child: ListTile(
                                tileColor: Colors.white,
                                contentPadding:
                                    EdgeInsets.only(top: 3, bottom: 3),
                                leading: CircleAvatar(
                                  radius: 40,
                                  backgroundImage: AssetImage(DishPics[index]),
                                ),
                                title: Text(
                                  DishNames[index],
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                                subtitle: InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => BakedRice()));
                                  },
                                  child: Text.rich(TextSpan(
                                      text: 'view details\n\n',
                                      style: TextStyle(
                                          fontFamily: 'Inter',
                                          color: Colors.grey,
                                          decoration: TextDecoration.underline,
                                          fontSize: 8),
                                      children: <TextSpan>[
                                        TextSpan(
                                            text: '${DishPrices[index]}',
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: Color(0xFFFA4A0C),
                                                decoration:
                                                    TextDecoration.none)),
                                      ])),
                                ),
                              ),
                            ),
                          );
                        },
                        separatorBuilder: (context, index) {
                          return Container(
                            color: Color(0xFFf2f2f2),
                          );
                        },
                        itemCount: DishNames.length)),
              ])),
    );
  }
}
