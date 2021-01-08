import 'package:flutter/material.dart';
import 'package:Priorii/screens/home/home.dart';
import 'package:Priorii/screens/authenticate/authenticate.dart';
import 'models/global.dart';

void main() => runApp(Priorii());

class Priorii extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter layout demo',
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: greyBackgroundColor,
          bottomNavigationBar: 
          new TabBar(
            tabs: [
              Tab(icon: Icon(Icons.directions_car)),
              Tab(icon: Icon(Icons.directions_transit)),
              Tab(icon: Icon(Icons.directions_bike)),
            ],
            indicatorColor: yellowColor,
            labelColor: Colors.black,
          ),
          body: 
          Home()
        ),
      ),
    );
  }
}

