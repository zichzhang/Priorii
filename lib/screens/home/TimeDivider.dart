import 'package:flutter/material.dart';

class TimeDivider extends StatelessWidget {

  final String timeOfDay;

  TimeDivider(this.timeOfDay);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(left: 25.0, top: 20.0,),
          child: Text(
            timeOfDay,
            style: TextStyle(
              fontFamily: 'Calibri',
              fontSize: 11,
              color: Colors.black,
            ),
          ),
        ),
        Expanded(
          child: Container(
            margin: EdgeInsets.only(top: 17.0, left: 10.0, right: 15.0),
            child: Divider(
              color: Colors.black,
              thickness: 0.8,
            ),
          ),
        ),
      ],
    ); 
  }
}