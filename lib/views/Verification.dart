import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lifepoints_ui/Widget/widget.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

class Verification extends StatefulWidget {
  @override
  _VerificationState createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF263238),
      body: SingleChildScrollView(
          child: Container(
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
            height: 25,
          ),
          OTPTextField(
            length: 4,
            width: MediaQuery.of(context).size.width,
            fieldWidth: 50,
            style: TextStyle(fontSize: 20, color: Colors.white),
            textFieldAlignment: MainAxisAlignment.spaceAround,
            fieldStyle: FieldStyle.underline,
            onCompleted: (pin) {
              print("Complete" + pin);
            },
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Didn't get an code?", style: mediumTextStyle()),
              GestureDetector(
                onTap: () {
                },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                  child: Text("Tap to Send",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                      )),
                ),
              )
            ],
          ),
          SizedBox(
            height: 100,
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
                'verify',
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
                Text('Verification',
                    style: TextStyle(fontSize: 50, color: Colors.white)),
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
          'We have sent you a verification code to your email ID davidwalb@gmail.com',
          style: TextStyle(fontSize: 15, color: Colors.white)),
    ),
  );
}
