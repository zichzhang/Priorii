import 'package:flutter/material.dart';
import 'package:Priorii/DailyBox.dart';
import 'package:Priorii/RealtimeDates.dart';
import 'package:intl/intl.dart';

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

FontWeight checkCurrentDay(String day) {
  DateTime today = DateTime.now();
  if (day == DateFormat('d').format(today)) {
    return FontWeight.bold;
  }
  else {
    return null;
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
          DailyBox(dailyNumber: concatenateDay(Date().days[day1 ?? 0]), dailyLetter: 'S', fontweight: checkCurrentDay(Date().days[day1 ?? 0]), paintingStyle: PaintingStyle.fill),
          DailyBox(dailyNumber: concatenateDay(Date().days[day2 ?? 1]), dailyLetter: 'M', fontweight: checkCurrentDay(Date().days[day2 ?? 1]), paintingStyle: PaintingStyle.fill),
          DailyBox(dailyNumber: concatenateDay(Date().days[day3 ?? 2]), dailyLetter: 'T', fontweight: checkCurrentDay(Date().days[day3 ?? 2]),),
          DailyBox(dailyNumber: concatenateDay(Date().days[day4 ?? 3]), dailyLetter: 'W', fontweight: checkCurrentDay(Date().days[day4 ?? 3]),),
          DailyBox(dailyNumber: concatenateDay(Date().days[day5 ?? 4]), dailyLetter: 'T', fontweight: checkCurrentDay(Date().days[day5 ?? 4]),),
          DailyBox(dailyNumber: concatenateDay(Date().days[day6 ?? 5]), dailyLetter: 'F', fontweight: checkCurrentDay(Date().days[day6 ?? 5]),),
          DailyBox(dailyNumber: concatenateDay(Date().days[day7 ?? 6]), dailyLetter: 'S', fontweight: checkCurrentDay(Date().days[day7 ?? 6]),),
      ],
    );
  }
}
