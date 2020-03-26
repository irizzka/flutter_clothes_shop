import 'package:flutter/material.dart';

Widget loginButton(String text) {
  return RaisedButton(
    shape: RoundedRectangleBorder(
      borderRadius: new BorderRadius.circular(18.0),
    ),
    color: Colors.lightBlue,
    textColor: Colors.white,
    child: Text(
      text,
      style: TextStyle(fontSize: 16),
    ),
    onPressed: () {},
  );
}
