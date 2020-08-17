import 'package:flutter/material.dart';
import 'package:Priorii/DailyBox.dart';
import 'package:Priorii/TimeDivider.dart';
import 'models/global.dart';

void main() => runApp(Priorii());

class Priorii extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // #docregion titleSection
    Widget titleSection = Container(
      margin: const EdgeInsets.only(left: 30, top: 45),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(bottom: 28),
              child: Text(
                'W E L C O M E ,  Z I  C H A O',
                style: TextStyle(
                  fontFamily: 'Calibri',
                  fontWeight: FontWeight.bold,
                  fontSize: 11,
                  color: Colors.black,
                ),
              ),
            ),
            Text(
              'Time Blocking',
              style: TextStyle(
                fontFamily: 'Calibri',
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: Colors.black,
              ),
            ),
          ],
        ),
      );

    // #docregion weekSection
    Widget weekSection = Container(
      height: 135,
      width: double.infinity,
      margin: const EdgeInsets.only(left: 15, right:15, top: 28),
      decoration: BoxDecoration(
        color: greyColor,
        borderRadius: BorderRadius.all(Radius.circular(15))
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              GestureDetector(
                onTap: () => {
                  print('Clicked Last Week')
                },
                child: Container(
                  alignment: Alignment.topLeft,
                  margin: const EdgeInsets.only(top: 13, left: 23),
                  child: RichText(
                    text: TextSpan(
                      style: TextStyle(
                        fontFamily: 'Calibri',
                        fontSize: 13,
                        color: Colors.black,
                      ),
                      children: <TextSpan>[
                        TextSpan(text: 'L A S T ', style: TextStyle(fontWeight: FontWeight.normal)),
                        TextSpan(text: ' W E E K', style: TextStyle(fontWeight: FontWeight.bold)),
                      ]
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => {
                  print('Clicked Next Week')
                },
                child: Container(
                  alignment: Alignment.topRight,
                  margin: const EdgeInsets.only(top: 13, right: 23),
                  child: RichText(
                    text: TextSpan(
                      style: TextStyle(
                        fontFamily: 'Calibri',
                        fontSize: 13,
                        color: Colors.black,
                      ),
                      children: <TextSpan>[
                        TextSpan(text: 'N E X T ', style: TextStyle(fontWeight: FontWeight.normal)),
                        TextSpan(text: ' W E E K', style: TextStyle(fontWeight: FontWeight.bold)),
                      ]
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container( // Container for the daily container and the dots
            alignment: Alignment.topRight,
            margin: const EdgeInsets.only(top: 15, bottom: 10, left: 10, right: 10),
            child: Row( // Row for the seven (days+dots) of the week
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[ 
                DailyBox(dailyNumber: '1 8', dailyLetter: 'S', paintingStyle: PaintingStyle.fill),
                DailyBox(dailyNumber: '1 9', dailyLetter: 'M', fontweight: FontWeight.bold, paintingStyle: PaintingStyle.fill),
                DailyBox(dailyNumber: '2 0', dailyLetter: 'T'),
                DailyBox(dailyNumber: '2 1', dailyLetter: 'W'),
                DailyBox(dailyNumber: '2 2', dailyLetter: 'T'),
                DailyBox(dailyNumber: '2 3', dailyLetter: 'F'),
                DailyBox(dailyNumber: '2 4', dailyLetter: 'S'),
              ],
            ),
          ),
        ],
      ),
    );

    // #docregion planSection
    Widget planSection = Container(
      height: 650.0,
      width: double.infinity,
      margin: const EdgeInsets.only(left: 15.0, right: 15.0, top: 21.0, bottom: 15.0),
      decoration: BoxDecoration(
        color: greyColor,
        borderRadius: BorderRadius.all(Radius.circular(15))
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Row( //Row of text(incoming events) and add button
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container( //Text(incoming events)
                margin: EdgeInsets.only(top: 15.0, left: 25.0),
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(
                      fontFamily: 'Calibri',
                      fontSize: 13,
                      color: Colors.black,
                    ),
                    children: <TextSpan>[
                      TextSpan(text: 'I N C O M I N G ', style: TextStyle(fontWeight: FontWeight.normal)),
                      TextSpan(text: ' E V E N T S', style: TextStyle(fontWeight: FontWeight.bold)),
                    ]
                  ),
                ),
              ),
              Container( //Add button
                margin: EdgeInsets.only(top: 15.0, right: 15.0),
                child: FloatingActionButton(
                  child: Icon(
                    Icons.add,
                    color: Colors.black,
                    ),
                  backgroundColor: yellowColor,
                  onPressed: () {},
                ),
              ),
            ],
          ),
          TimeDivider('0 9  A M'),
          Container(
            margin: EdgeInsets.only(top: 15.0, left: 25.0, right: 15.0),
            child: Divider(
              color: Colors.black,
              thickness: 0.8,
            ),
          ),
          TimeDivider('1 0  A M'),
          Container(
            margin: EdgeInsets.only(top: 15.0, left: 25.0, right: 15.0),
            child: Divider(
              color: Colors.black,
              thickness: 0.8,
            ),
          ),
          TimeDivider('1 1  A M'),
          Container(
            margin: EdgeInsets.only(top: 15.0, left: 25.0, right: 15.0),
            child: Divider(
              color: Colors.black,
              thickness: 0.8,
            ),
          ),
          TimeDivider('1 2  A M'),
          Container(
            margin: EdgeInsets.only(top: 15.0, left: 25.0, right: 15.0),
            child: Divider(
              color: Colors.black,
              thickness: 0.8,
            ),
          ),
          TimeDivider('0 1  P M'),
          Container(
            margin: EdgeInsets.only(top: 15.0, left: 25.0, right: 15.0),
            child: Divider(
              color: Colors.black,
              thickness: 0.8,
            ),
          ),
          TimeDivider('0 2  P M'),
          Container(
            margin: EdgeInsets.only(top: 15.0, left: 25.0, right: 15.0),
            child: Divider(
              color: Colors.black,
              thickness: 0.8,
            ),
          ),
          TimeDivider('0 3  P M'),
          Container(
            margin: EdgeInsets.only(top: 15.0, left: 25.0, right: 15.0),
            child: Divider(
              color: Colors.black,
              thickness: 0.8,
            ),
          ),
          TimeDivider('0 4  P M'),
          Container(
            margin: EdgeInsets.only(top: 15.0, left: 25.0, right: 15.0),
            child: Divider(
              color: Colors.black,
              thickness: 0.8,
            ),
          ),
          TimeDivider('0 5  P M'),
        ],
      ),
    );

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
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                titleSection,
                weekSection,
                planSection,
              ],
            ),
          ),
        ),
      ),
    );
  }
}

