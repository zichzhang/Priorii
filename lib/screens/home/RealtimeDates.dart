import 'package:intl/intl.dart';

String month = DateFormat('MMMM').format(DateTime.now());

String monospaceString(String string) {
  
  String stringFormatted = string.replaceAll('', ' ');
  return stringFormatted;

  }

class Date {

  DateTime now = DateTime.now();
  List days = new List();

  Date() {  
    for (int i = 0; i < 14; i++) {
      DateTime day = now.subtract(new Duration(days: now.weekday - i));
      days.add(DateFormat('d').format(day));
    }
    print(days);
  
  }
}