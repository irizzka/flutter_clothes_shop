import 'package:flutter/material.dart';
import 'package:flutter_clothes_shop/auth/widgets/email_input.dart';
import 'package:flutter_clothes_shop/auth/widgets/google_button.dart';
import 'package:flutter_clothes_shop/auth/widgets/login_button.dart';
import 'package:flutter_clothes_shop/auth/widgets/password_input.dart';
import 'package:flutter_clothes_shop/auth/widgets/sign_up_bottom_text.dart';
import 'package:flutter_clothes_shop/auth/widgets/title_text_widget.dart';

class SignInScreen extends StatelessWidget {
  final _formKey = new GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: _buildForm(context),
    );
  }

  Widget _buildForm(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            tittleText(),
            emailInput(),
            passwordInput("Password"),
            loginButton("SignIn"),
            googleButton("Login with Google"),
            bottomSignUpText(context),
          ],
        ),
      ),
    );
  }
}
