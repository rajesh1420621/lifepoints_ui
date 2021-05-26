import 'package:flutter/material.dart';

InputDecoration textFieldInputDecoration(String hintText) {
  return InputDecoration(
    labelText: hintText,
    hintText: hintText,
    hintStyle: TextStyle(color: Colors.white),
    labelStyle: TextStyle(color: const Color(0xFFFAFAFA)),
    focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: const Color(0xFFFAFAFA)),
    ),
    enabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: const Color(0xFFFAFAFA)),
    ),
  );
}

TextStyle simpleTextStyle() {
  return TextStyle(color: Colors.white, fontSize: 16);
}

TextStyle mediumTextStyle() {
  return TextStyle(color: Colors.white, fontSize: 17);
}
