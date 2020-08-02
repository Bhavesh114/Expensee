import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:expensee/Constants.dart';
class Statistic extends StatefulWidget {
  @override
  _StatisticState createState() => _StatisticState();
}

class _StatisticState extends State<Statistic> {
  CalendarController _controller;
  double currentIndex = 0.0;
  @override
  void initState() {
    super.initState();
    _controller = CalendarController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);

    return Scaffold(
      backgroundColor: Color(0xffFCFCFC),
      body: Column(
        children: <Widget>[
          Container(
            child: SingleChildScrollView(
              child: TableCalendar(
                initialCalendarFormat: CalendarFormat.week,
                calendarStyle: kCalendarStyle,
                headerStyle: HeaderStyle(
                  centerHeaderTitle: false,
                  formatButtonDecoration: BoxDecoration(
                    // color: Color(0xffFF3300),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  formatButtonTextStyle: TextStyle(color: Colors.black),
                  formatButtonShowsNext: false,
                  //formatButtonVisible: false,
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
            decoration: kboxDecoration,
          ), //Table Calendar
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 30.0, 0, 55.0),
            child: Text(
              'No Statistics to Show',
              style: TextStyle(color: Colors.grey,fontSize: 25.0),
            ),
          ),
          Container(
            child: Image.asset('images/StatsEmpty.png'),
          ),
        ],
      ),
    );
  }
}
