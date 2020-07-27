import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:expensee/Constants.dart';

class EmptyStateDaily extends StatefulWidget {
  @override
  _EmptyStateDailyState createState() => _EmptyStateDailyState();
}

class _EmptyStateDailyState extends State<EmptyStateDaily> {
  CalendarController _controller;
  //HeaderGestureCallback ontapheader;

  @override
  void initState() {
    super.initState();
    _controller = CalendarController();
  }

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);

    return Scaffold(
      backgroundColor: Color(0xffFCFCFC),
//      appBar: AppBar(
//        backgroundColor: Colors.white,
//        title: Text('Daily Transaction', style: TextStyle(
//          fontSize: 20.0,
//          fontWeight: FontWeight.bold,
//          color: Colors.black,
//        ),),
//      ),
      body:
      Column(
        children: <Widget>[
          Container(
            child: SingleChildScrollView(
              child: TableCalendar(
                initialCalendarFormat: CalendarFormat.week,
                calendarStyle: CalendarStyle(
                  selectedColor: Color(0xffFF3378),
                  todayColor: Color(0xfffcd4e2),
                  todayStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                    color: Colors.white,
                  ),
                ),
                //onHeaderTapped: ontapheader, need to figure out this
                headerStyle: HeaderStyle(
                  centerHeaderTitle: false,
                  formatButtonDecoration: BoxDecoration(
                    // color: Color(0xffFF3300),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  formatButtonTextStyle: TextStyle(color: Colors.black),
                  formatButtonShowsNext: false,
                ),
                startingDayOfWeek: StartingDayOfWeek.monday,
                onDaySelected: (date, events) {
                  print(date.toIso8601String());
                },
                builders: CalendarBuilders(
                  selectedDayBuilder: (context, date, events) => Container(
                    margin: const EdgeInsets.all(4.0),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Color(0xffFF3378),
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: Text(
                      date.day.toString(),
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                calendarController: _controller,
              ),
            ),
            width: queryData.size.width,//380.7,
            height: 185.9,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(23.98),
                topRight: Radius.circular(23.98),
                bottomRight: Radius.circular(35.97),
                bottomLeft: Radius.circular(35.97),
              ),
              color: const Color(0xffffffff),
              boxShadow: [
                BoxShadow(
                  color: const Color(0xffe6e3e3),
                  offset: Offset(0, 8),
                  blurRadius: 24,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40.0),
            child: Image.asset(
              "images/DailyEmpty.png",
              height: 250.0,
              width: 250.0,
            ),
          ),
        ],
      ),

    );
  }
}
