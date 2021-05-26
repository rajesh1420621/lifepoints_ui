import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:lifepoints_ui/Widget/widget.dart';
import 'package:lifepoints_ui/views/Login.dart';

import 'Home.dart';

class CreateAccount extends StatefulWidget {

  @override
  _CreateAccountState createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF263238),
      body: SingleChildScrollView(
        child: Container(
          child: Container(
              height: MediaQuery.of(context).size.height,
              child: Container(
                padding: EdgeInsets.only(top: 120),
                alignment: Alignment.topCenter,
                child: Column(children: [
                  Text(
                    "Profile Picture",
                    style: TextStyle(color: Colors.white),
                  ),
                  GestureDetector(
                      onTap: () {

                      },
                      child: Container(
                        width: 150,
                        height: 100,
                        margin: EdgeInsets.only(top: 10),
                        decoration: BoxDecoration(
                            // borderRadius: BorderRadius.circular(1000),
                            shape: BoxShape.circle,
                            border: Border.all(width: 0, color: Colors.white)),
                        child: Icon(
                          Icons.camera_alt_outlined,
                          color: Colors.white,
                        ),
                      )),
                  GenderSelection(),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: TextFormField(
                      style: TextStyle(color: Colors.white),
                      decoration: textFieldInputDecoration("username"),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: TextFormField(
                      style: TextStyle(color: Colors.white),
                      decoration: textFieldInputDecoration("email"),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: TextFormField(
                      style: TextStyle(color: Colors.white),
                      decoration: textFieldInputDecoration("password"),
                      obscureText: true,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: TextFormField(
                      obscureText: true,
                      style: TextStyle(color: Colors.white),
                      decoration: textFieldInputDecoration("confirm password"),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Home()));
                    },
                    child: Container(
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.symmetric(vertical: 20,),
                      decoration: BoxDecoration(
                          gradient: LinearGradient(colors: [
                            const Color(0xFF40C4FF),
                            const Color(0xFF0091EA),
                          ]),
                          borderRadius: BorderRadius.circular(30.0)),
                      child: Text(
                        'CREATE ACCOUNT',
                        style: TextStyle(color: Colors.black, fontSize: 17),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(" Have an account ?", style: mediumTextStyle()),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Login()));
                        },
                        child: Container(
                          padding:
                              EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                          child: Text("Log in",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                  )),
                        ),
                      )
                    ],
                  ),
                ]),
              )),
        ),
      ),
    );
  }
}

// ignore: non_constant_identifier_names
Widget GenderSelection() {
  return Container(
    padding: EdgeInsets.only(left: 100),
    margin: EdgeInsets.only(top: 30),
    child: Container(
      child: Row(
        children: [
          GestureDetector(
            onTap: () {},
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              alignment: Alignment.center,
              child: Icon(
                Icons.male_rounded,
                color: Colors.white,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              alignment: Alignment.center,
              child: Icon(
                Icons.female,
                color: Colors.white,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              alignment: Alignment.center,
              child: Icon(
                Icons.transgender,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

// ignore: non_constant_identifier_names
Widget TextField() {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
    child: TextFormField(
      style: TextStyle(color: Colors.white),
      decoration: textFieldInputDecoration("username"),
    ),
  );
}
