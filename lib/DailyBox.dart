import 'package:flutter/material.dart';
import 'package:Priorii/DrawCircle.dart';
import 'models/global.dart';

class DailyBox extends StatelessWidget {

  final String dailyNumber;
  final String dailyLetter;
  final FontWeight fontweight;
  final PaintingStyle paintingStyle;
  
  DailyBox({this.dailyNumber, this.dailyLetter, this.fontweight, this.paintingStyle});

  @override
  Widget build(BuildContext context) {
    return Column( 
      children: <Widget>[
        Material(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          child: Ink( // Container for number and day
            decoration: BoxDecoration(
              border: Border.all(color: greyBorderColor),
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: yellowColor,
            ),
            child: InkWell(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              child: Column(
                children: <Widget> [
                  Container(
                    margin: EdgeInsets.only(top: 7, bottom: 14, left: 7, right: 7),
                    child: Text(
                      dailyNumber,
                      style: TextStyle(
                        fontFamily: 'Calibri',
                        fontSize: 13,
                        fontWeight: fontweight ?? FontWeight.normal,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 7, left: 7, right: 7),
                    child: Text(
                      dailyLetter,
                      style: TextStyle(
                        fontFamily: 'Calibri',
                        fontSize: 11,
                        fontWeight: fontweight ?? FontWeight.normal,
                        color: Colors.black,
                      ),
                    ),  
                  ),
                ],
              ),
              onTap: () {
                print('Clicked');
              },
              splashColor: greyColor,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 13, bottom: 5),
          child: CustomPaint(painter: DrawCircle(this.paintingStyle)),
        ),
      ],
    );
  }
}