import 'package:Priorii/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:Priorii/screens/home/home.dart';
import 'package:Priorii/screens/authenticate/authenticate.dart';
import 'package:Priorii/screens/wrapper.dart';
import 'package:provider/provider.dart';
import 'package:Priorii/models/user.dart';

void main() => runApp(Priorii());

class Priorii extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      value: AuthService().user,
      child: MaterialApp(
        home: Wrapper(),
      ),
    );
  }
}

