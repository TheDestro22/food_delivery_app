import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:food_delivery_app/main_screen.dart';
import 'package:simple_animated_button/simple_animated_button.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _CartState();
}

class _CartState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf2f2f2),
      appBar: AppBar(
        backgroundColor: Color(0xFFf2f2f2),
        leading: IconButton(
          icon: Icon(Icons.list),
          onPressed: () {
            setState(() {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MainScreen()));
            });
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 35),
        child: Form(
            child: Center(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 50),
                child: Stack(clipBehavior: Clip.none, children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                        color: Color(0xFF333333),
                        borderRadius: BorderRadius.circular(20)),
                    width: 364,
                    height: 366,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(bottom: 24, top: 65),
                                child: Row(
                                  children: [
                                    Text(
                                      "Name:",
                                      style: TextStyle(
                                          color: Color(0xFFC4C4C4),
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17),
                                    ),
                                    Padding(
                                        padding: EdgeInsets.only(left: 40),
                                        child: Container(
                                            padding: EdgeInsets.only(right: 36),
                                            decoration: BoxDecoration(
                                                border: Border(
                                                    bottom: BorderSide(
                                                        color:
                                                            Color(0xFFC4C4C4),
                                                        width: 1))),
                                            child: Text(
                                              "Ghanshyamsinh Zala",
                                              style: TextStyle(
                                                fontSize: 17,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.normal,
                                                color: Color(0xFFFF4B3A),
                                              ),
                                            )))
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 24),
                                child: Row(
                                  children: [
                                    Text(
                                      "E-mail:",
                                      style: TextStyle(
                                          color: Color(0xFFC4C4C4),
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17),
                                    ),
                                    Padding(
                                        padding: EdgeInsets.only(left: 34),
                                        child: Container(
                                            padding: EdgeInsets.only(right: 24),
                                            decoration: BoxDecoration(
                                                border: Border(
                                                    bottom: BorderSide(
                                                        color:
                                                            Color(0xFFC4C4C4),
                                                        width: 1))),
                                            child: Text(
                                              "ghza3006@gmail.com",
                                              style: TextStyle(
                                                fontSize: 17,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.normal,
                                                color: Color(0xFFFF4B3A),
                                              ),
                                            )))
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 24),
                                child: Row(
                                  children: [
                                    Text(
                                      "Address:",
                                      style: TextStyle(
                                          color: Color(0xFFC4C4C4),
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17),
                                    ),
                                    Padding(
                                        padding: EdgeInsets.only(left: 20),
                                        child: Container(
                                            padding: EdgeInsets.only(right: 19),
                                            decoration: BoxDecoration(
                                                border: Border(
                                                    bottom: BorderSide(
                                                        color:
                                                            Color(0xFFC4C4C4),
                                                        width: 1))),
                                            child: Text(
                                              "xyx, near abc, bcd road",
                                              style: TextStyle(
                                                fontSize: 17,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.normal,
                                                color: Color(0xFFFF4B3A),
                                              ),
                                            )))
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 24),
                                child: Row(
                                  children: [
                                    Text(
                                      "Phone:",
                                      style: TextStyle(
                                          color: Color(0xFFC4C4C4),
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17),
                                    ),
                                    Padding(
                                        padding: EdgeInsets.only(left: 36),
                                        child: Container(
                                            padding:
                                                EdgeInsets.only(right: 122),
                                            decoration: BoxDecoration(
                                                border: Border(
                                                    bottom: BorderSide(
                                                        color:
                                                            Color(0xFFC4C4C4),
                                                        width: 1))),
                                            child: Text(
                                              "0123456789",
                                              style: TextStyle(
                                                fontSize: 17,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.normal,
                                                color: Color(0xFFFF4B3A),
                                              ),
                                            )))
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 24),
                                child: Row(
                                  children: [
                                    Text(
                                      "DOB:",
                                      style: TextStyle(
                                          color: Color(0xFFC4C4C4),
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17),
                                    ),
                                    Padding(
                                        padding: EdgeInsets.only(left: 55),
                                        child: Container(
                                            padding:
                                                EdgeInsets.only(right: 124),
                                            decoration: BoxDecoration(
                                                border: Border(
                                                    bottom: BorderSide(
                                                        color:
                                                            Color(0xFFC4C4C4),
                                                        width: 1))),
                                            child: Text(
                                              "13-07-2004",
                                              style: TextStyle(
                                                fontSize: 17,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.normal,
                                                color: Color(0xFFFF4B3A),
                                              ),
                                            )))
                                  ],
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Pass:",
                                    style: TextStyle(
                                        color: Color(0xFFC4C4C4),
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17),
                                  ),
                                  Padding(
                                      padding: EdgeInsets.only(left: 50),
                                      child: Container(
                                          padding: EdgeInsets.only(right: 102),
                                          decoration: BoxDecoration(
                                              border: Border(
                                                  bottom: BorderSide(
                                                      color: Color(0xFFC4C4C4),
                                                      width: 1))),
                                          child: Text(
                                            "**************",
                                            style: TextStyle(
                                              fontSize: 17,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.normal,
                                              color: Color(0xFFFF4B3A),
                                            ),
                                          )))
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    top: -50,
                    right: 130,
                    child: CircleAvatar(
                      child: Image.asset('assets/User.png'),
                      radius: 50,
                      backgroundColor: Color(0xFFeaeaea),
                    ),
                  ),
                ]),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 15, top: 30),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        fixedSize: Size(364, 52),
                        backgroundColor: Color(0xFFFFFFFF)),
                    onPressed: () {
                      setState(() {});
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(right: 10),
                            child: Icon(
                              Icons.settings,
                              color: Color(0xFF9A9A9D),
                            )),
                        Padding(
                            padding: EdgeInsets.only(right: 200),
                            child: Text(
                              "Settings",
                              style: TextStyle(color: Color(0xFF201F29)),
                            )),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Color(0xFF201F29),
                        )
                      ],
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        fixedSize: Size(364, 52),
                        backgroundColor: Color(0xFFFFFFFF)),
                    onPressed: () {
                      setState(() {});
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(right: 10),
                            child: Icon(
                              Icons.history,
                              color: Color(0xFF9A9A9D),
                            )),
                        Padding(
                            padding: EdgeInsets.only(right: 208),
                            child: Text(
                              "History",
                              style: TextStyle(color: Color(0xFF201F29)),
                            )),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Color(0xFF201F29),
                        )
                      ],
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        fixedSize: Size(364, 52),
                        backgroundColor: Color(0xFFFFFFFF)),
                    onPressed: () {
                      setState(() {});
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(right: 10),
                            child: Icon(
                              Icons.info_outline,
                              color: Color(0xFF9A9A9D),
                            )),
                        Padding(
                            padding: EdgeInsets.only(right: 186),
                            child: Text(
                              "About App",
                              style: TextStyle(color: Color(0xFF201F29)),
                            )),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Color(0xFF201F29),
                        )
                      ],
                    )),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
