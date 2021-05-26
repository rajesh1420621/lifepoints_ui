import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lifepoints_ui/Widget/widget.dart';
import 'package:lifepoints_ui/views/Create_Account.dart';
import 'package:lifepoints_ui/views/Home.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final minimumPadding = 5.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF263238),
        body: SingleChildScrollView(
          child: Container(
              height: MediaQuery.of(context).size.height,
              margin: EdgeInsets.only(top: 150),
              child: Container(
                  padding: EdgeInsets.all(18.0),
                  decoration: new BoxDecoration(
                      image: new DecorationImage(
                          alignment: Alignment.topCenter,
                          image: new AssetImage(
                            "assets/lifepoints.png",
                          ))),
                  child: Column(children: [
                    Padding(
                      padding: EdgeInsets.only(top: 250),
                      child: TextFormField(
                        style: TextStyle(color: Colors.white),
                        decoration: textFieldInputDecoration("Email"),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 16),
                      child: TextFormField(
                        style: TextStyle(color: Colors.white),
                        decoration: textFieldInputDecoration('Password'),
                        obscureText: true,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Container(
                        alignment: Alignment.centerLeft,
                        child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 16, vertical: 8),
                            child: Text(
                              "Forgot Password?",
                              style: simpleTextStyle(),
                            ))),
                    SizedBox(
                      height: 100,
                    ),
                    GestureDetector(
                      onTap: (
                          ) {
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Home()));

                      },
                      child: Container(
                        alignment: Alignment.center,
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.symmetric(vertical: 20),
                        decoration: BoxDecoration(
                            gradient: LinearGradient(colors: [
                              const Color(0xFF40C4FF),
                              const Color(0xFF0091EA),
                            ]),
                            borderRadius: BorderRadius.circular(30.0)),
                        child: Text(
                          'Login',
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
                        Text("Don't have account ?", style: mediumTextStyle()),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => CreateAccount()));
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 8, horizontal: 10),
                            child: Text("Create One",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                    decoration: TextDecoration.underline)),
                          ),
                        )
                      ],
                    ),
                  ]))),
        ));
  }
}
