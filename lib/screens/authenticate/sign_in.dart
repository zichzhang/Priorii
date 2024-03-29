import 'package:Priorii/shared/constants.dart';
import 'package:flutter/material.dart';
import 'package:Priorii/services/auth.dart';
import 'package:Priorii/models/global.dart';
import 'package:Priorii/shared/Loading.dart';

class SignIn extends StatefulWidget {

  final Function toggleView;
  SignIn({ this.toggleView });

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  // create an instance of AuthService
  final AuthService _auth = AuthService(); 
  final _formKey = GlobalKey<FormState>();
  bool isLoading = false;

  // text field state
  String email = '';
  String password = '';
  String error = '';

  @override
  Widget build(BuildContext context) {
    return isLoading ? Loading() : Scaffold(
      backgroundColor: greyBackgroundColor,
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              SizedBox(height: 100.0),
              // email form field
              TextFormField(
                decoration: textInputDecoration.copyWith(hintText: 'Email'),
                validator: (val) => val.isEmpty ? 'Enter an email' : null,
                onChanged: (val) {
                  setState(() => email = val);
                },
              ),
              SizedBox(height: 20.0),
              // password form field
              TextFormField(
                decoration: textInputDecoration.copyWith(hintText: 'Password'),
                obscureText: true,
                validator: (val) => val.length < 6 ? 'Enter a password 6+ chars long' : null,
                onChanged: (val) {
                  setState(() => password = val);
                },
              ),
              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  SizedBox(width: 30.0),
                  RaisedButton(
                    color: lilacColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Text(
                      'Sign in',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'calibri',
                      ),
                    ),
                    onPressed: () async {
                      if (_formKey.currentState.validate()) {
                        setState(() => isLoading = true);
                        dynamic result = await _auth.signInWithEmailAndPassword(email, password);
                        if (result == null) {
                          setState(() {
                            error = 'Invalid email or password';
                            isLoading = false;
                          });
                        } 
                      }
                    }
                  ),
                  InkWell(
                    onTap: () {
                      widget.toggleView();
                    },
                    child: Text(
                      'Register',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'calibri',
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 12.0),
              Text(
                error,
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}