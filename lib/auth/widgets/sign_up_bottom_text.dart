import 'package:flutter/material.dart';

import '../sceens/sign_up_screen.dart';

Widget bottomSignUpText(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Text("If you don`t have account "),
      InkWell(
        child: Text(
          "signUp",
          style: TextStyle(color: Colors.blue),
        ),
        onTap: () {
          print('SingUp presed');
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => SignUpScreen()));
        },
      )
    ],
  );
}
