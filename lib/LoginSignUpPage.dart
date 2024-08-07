import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_delivery_app/HomePage.dart';
import 'package:food_delivery_app/main_screen.dart';

class Login extends StatefulWidget {
  Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  // This widget is the root of your application.

  TextEditingController EmailController = TextEditingController();
  TextEditingController PasswordController = TextEditingController();
  GlobalKey<FormState> FormKey = GlobalKey<FormState>();
  bool _passwordVisible = false;

  String email = "your_email@example.com";

  RegExp email_checker =
      RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'FeastFlow',
        theme: ThemeData(
            scaffoldBackgroundColor: Color(0xFFff4b3a), fontFamily: 'Poppins'),
        home: Scaffold(
          appBar: AppBar(backgroundColor: Color(0xFFff4b3a)),
          body: SingleChildScrollView(
            child: Form(
              key: FormKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 27),
                        child: Text(
                          'Sign in',
                          style: TextStyle(fontFamily: 'Poppins', fontSize: 24),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 27, top: 15),
                        child: Text(
                          'Reset password',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 13,
                              decoration: TextDecoration.underline),
                        ),
                      ),
                    ],
                  ),
                  ///////////////////////////////////////////////////////////////////////////////
                  Padding(
                    padding: EdgeInsets.only(left: 27, top: 74),
                    child: Text(
                      'Email',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 16,
                          color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: 27, right: 27, top: 15, bottom: 15),
                    child: TextFormField(
                      controller: EmailController,
                      keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Email is required";
                        } else if (RegExp(
                                    r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$')
                                .hasMatch(value) ==
                            false) {
                          return "Email is invalid";
                        }

                        return null;
                      },
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(
                                color: Colors.black, style: BorderStyle.solid)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(
                                color: Colors.white, style: BorderStyle.solid)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(
                                color: Colors.white, style: BorderStyle.solid)),
                      ),
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 13,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  ///////////////////////////////////////////////////////////////////////////////
                  Padding(
                    padding: EdgeInsets.only(left: 27, top: 8, right: 27),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Password',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 16,
                                color: Colors.white),
                          ),
                          // Padding(
                          //     padding: EdgeInsets.only(left: 230),
                          //     child: InkWell(
                          //         onTap: () {
                          //           setState(() {});
                          //         },
                          //         child: Row(
                          //           children: [
                          //             Icon(
                          //               Icons.visibility_off_rounded,
                          //               color: Colors.white,
                          //               size: 20,
                          //             ),
                          //             Text(
                          //               'Hide',
                          //               style: TextStyle(
                          //                   fontFamily: 'Poppins',
                          //                   fontSize: 16,
                          //                   color: Colors.white),
                          //             )
                          //           ],
                          //         ))),
                        ]),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 27, right: 27, top: 15),
                    child: TextFormField(
                      controller: PasswordController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Password is required";
                        } else if (value.length < 6) {
                          return "Password is too short";
                        }

                        return null;
                      },
                      obscureText: _passwordVisible,
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                          icon: Icon(
                            _passwordVisible
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            setState(() {
                              _passwordVisible = !_passwordVisible;
                            });
                          },
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(
                                color: Colors.black, style: BorderStyle.solid)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(
                                color: Colors.white, style: BorderStyle.solid)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(
                                color: Colors.white, style: BorderStyle.solid)),
                      ),
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 13,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(left: 56, top: 15),
                      child: Row(children: [
                        Padding(
                            padding: EdgeInsets.only(right: 10),
                            child: Icon(Icons.check_box_outline_blank_sharp,
                                color: Colors.white, size: 28)),
                        Padding(
                            padding: EdgeInsets.only(top: 5),
                            child: Text(
                              'Remember me',
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 16,
                                  color: Colors.white),
                            ))
                      ])),
                  Padding(
                    padding: EdgeInsets.only(
                        left: 27, top: 40, right: 27, bottom: 20),
                    child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.black)),
                        onPressed: () {
                          if (FormKey.currentState!.validate()) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MainScreen()));
                          }
                        },
                        child: Padding(
                            padding: EdgeInsets.only(
                                top: 15, right: 135, left: 135, bottom: 15),
                            child: Text(
                              'Sign in',
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 22,
                                  color: Colors.white),
                            ))),
                  ),
                  Padding(
                      padding: EdgeInsets.only(left: 35, right: 35),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 150,
                            height: 2,
                            child: Divider(
                              thickness: 2,
                              color: Color(0xFF9F9F9F),
                            ),
                          ),
                          Text(
                            'OR',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w900),
                          ),
                          Container(
                            width: 150,
                            height: 2,
                            child: Divider(
                              thickness: 2,
                              color: Color(0xFF9F9F9F),
                            ),
                          )
                        ],
                      )),
                  Padding(
                    padding: EdgeInsets.only(
                        left: 27, top: 20, right: 27, bottom: 20),
                    child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.black)),
                        onPressed: () {
                          setState(() {});
                        },
                        child: Padding(
                            padding: EdgeInsets.only(
                                top: 15, right: 85, left: 85, bottom: 20),
                            child: Text(
                              'Create an account',
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 18,
                                  color: Colors.white),
                            ))),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: 27, top: 10, right: 27, bottom: 20),
                    child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.white)),
                        onPressed: () {
                          setState(() {});
                        },
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 52),
                                child: Container(
                                    width: 24,
                                    height: 24,
                                    child: Image.asset('assets/google.png')),
                              ),
                              Padding(
                                  padding: EdgeInsets.only(
                                      top: 20, right: 65, left: 20, bottom: 15),
                                  child: Text(
                                    'Continue with Google',
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 16,
                                        fontWeight: FontWeight.w900,
                                        color: Color(0xFF333333)),
                                  ))
                            ])),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
