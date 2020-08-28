import 'package:intl/intl.dart';

class Date {

  DateTime now = DateTime.now();
  List days = new List();
  List weekdays = new List();

  Date() {  
    for (int i = 0; i < 14; i++) {
      DateTime day = now.subtract(new Duration(days: now.weekday - i));
      days.add(DateFormat('d').format(day));
    }
    print(days);

    for (int i = 0; i < 14; i++) {
    DateTime day = now.add(Duration(days: i));
    weekdays.add(DateFormat('E').format(day));
    }
    print(weekdays);
  }
}