import 'package:flutter/material.dart';
import 'package:flutter_clothes_shop/auth/widgets/email_input.dart';
import 'package:flutter_clothes_shop/auth/widgets/google_button.dart';
import 'package:flutter_clothes_shop/auth/widgets/login_button.dart';
import 'package:flutter_clothes_shop/auth/widgets/password_input.dart';

class SignUpScreen extends StatelessWidget {
  final _formKey = new GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: _signUpBody(),
    );
  }

  Widget _signUpBody() {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            googleButton("SignUp with Google"),
            emailInput(),
            passwordInput("Password"),
            passwordInput("Confirm Password"),
            loginButton("Sign Up"),
          ],
        ),
      ),
    );
  }
}
