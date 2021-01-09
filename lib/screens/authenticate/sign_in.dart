import 'package:flutter/material.dart';
import 'package:Priorii/services/auth.dart';
import 'package:Priorii/models/global.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  // create an instance of AuthService
  final AuthService _auth = AuthService(); 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greyBackgroundColor,
      appBar: AppBar(
        backgroundColor: greyBorderColor,
        elevation: 0.0,
        title: Text('Sign in to Priorii'),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
        child: RaisedButton(
          color: lilacColor,
          child: Text('Sign in anon'),
          onPressed: () async {
            dynamic result = await _auth.signInAnon();
            if (result == null) {
              print('error signing in');
            } else {
              print('signed in');
              print(result.uid);
            }
          },
        )
      )
    );
  }
}