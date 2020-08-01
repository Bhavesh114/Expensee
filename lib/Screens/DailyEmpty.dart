import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:navigation_action_bar/navigation_action_bar.dart';
import 'package:expensee/BottomBar.dart';
import '../Constants.dart';

class EmptyStateDaily extends StatefulWidget {
  @override
  _EmptyStateDailyState createState() => _EmptyStateDailyState();
}

class _EmptyStateDailyState extends State<EmptyStateDaily> {
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
        ],
      ),
    );
//        bottomNavigationBar: NavigationActionBar(
//          context: context,
//          scaffoldColor: Color(0xffff3378),
//          index: 0,
//          subItems: [
//            NavBarItem(iconData: Icons.arrow_downward, size: 25),
//            NavBarItem(iconData: Icons.arrow_upward, size: 25),
//          ],
//          mainIndex: 2,
//          items: [
//            NavBarItem(iconData: Icons.calendar_today, size: 30),
//            NavBarItem(iconData: Icons.insert_chart, size: 30),
//            NavBarItem(iconData: Icons.add, size: 40),
//            NavBarItem(iconData: Icons.account_balance_wallet, size: 30),
//            NavBarItem(iconData: Icons.person_outline, size: 30),
//          ],
//          onTap: (index) {
//            setState(() {
//              currentIndex = index;
//              print(currentIndex);
//            });
//          },
//        ));
  }
}
