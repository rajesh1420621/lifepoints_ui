import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lifepoints_ui/Widget/widget.dart';


class ResetPassword extends StatefulWidget {
  @override
  _ResetPasswordState createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF263238),
      body: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Column(children: [
              Container(
                // height: MediaQuery.of(context).size.height,
                margin: EdgeInsets.only(top: 100),
                alignment: Alignment.center,
                decoration: new BoxDecoration(
                    image: new DecorationImage(
                        alignment: Alignment.topCenter,
                        image: new AssetImage(
                          "assets/lifepoints.png",
                        ))),
                child: text(),
              ),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: TextFormField(
                  obscureText: true,
                  style: TextStyle(color: Colors.white),
                  decoration: textFieldInputDecoration("New Password"),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: TextFormField(
                  obscureText: true,
                  style: TextStyle(color: Colors.white),
                  decoration: textFieldInputDecoration("Re-Enter Password"),
                ),
              ),

              SizedBox(
                height: 150,
              ),
              GestureDetector(
                onTap: () {},
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
                    'Reset Password',
                    style: TextStyle(color: Colors.black, fontSize: 17),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Have an account?", style: mediumTextStyle()),
                  GestureDetector(
                    onTap: () {
                      // widget.toggle();
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                      child: Text("Login",
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
    );
  }
}

Widget text() {
  return Container(
    child: Container(
        child: Column(children: [
          Container(
            child: Container(
                margin: EdgeInsets.only(top: 150),
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                child: Row(

                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        print('clicked');
                      },
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                    ),
                    Text('Reset Password',
                        style: TextStyle(fontSize: 40, color: Colors.white)),
                  ],
                )),
          ),
          description(),
        ])),
  );
}

Widget description() {
  return Container(
    margin: EdgeInsets.only(
      left: 70,
    ),
    // padding: EdgeInsets.,
    child: Container(
      child: Text(
          "E-mail address verified! Set a new password",
          style: TextStyle(fontSize: 15, color: Colors.white)),
    ),
  );
}
