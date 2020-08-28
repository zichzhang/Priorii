import 'package:flutter/material.dart';
import 'package:Priorii/DailyBox.dart';
import 'package:Priorii/Backend.dart';

String concatenateDay(String date) {
  if (date.length == 2) {
    String dayFormatted = date[0] + ' ' + date[1];
    return dayFormatted;
  }
  else {
    String dayFormatted = '0' + ' ' + date[0];
    return dayFormatted;  
  }
}

class WeekView extends StatelessWidget {

  final int day1;
  final int day2;
  final int day3;
  final int day4;
  final int day5;
  final int day6;
  final int day7;

  WeekView({this.day1, this.day2, this.day3, this.day4, this.day5, this.day6, this.day7});

  @override
  Widget build(BuildContext context) {
    return Row( // Row for the seven (days+dots) of the week
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[ 
          DailyBox(dailyNumber: concatenateDay(Date().days[day1 ?? 0]), dailyLetter: 'S', paintingStyle: PaintingStyle.fill),
          DailyBox(dailyNumber: concatenateDay(Date().days[day2 ?? 1]), dailyLetter: 'M', fontweight: FontWeight.bold, paintingStyle: PaintingStyle.fill),
          DailyBox(dailyNumber: concatenateDay(Date().days[day3 ?? 2]), dailyLetter: 'T'),
          DailyBox(dailyNumber: concatenateDay(Date().days[day4 ?? 3]), dailyLetter: 'W'),
          DailyBox(dailyNumber: concatenateDay(Date().days[day5 ?? 4]), dailyLetter: 'T'),
          DailyBox(dailyNumber: concatenateDay(Date().days[day6 ?? 5]), dailyLetter: 'F'),
          DailyBox(dailyNumber: concatenateDay(Date().days[day7 ?? 6]), dailyLetter: 'S'),
      ],
    );
  }
}