import 'package:expensee/Screens/AddExpenseScerne.dart';
import 'package:expensee/Screens/AddIncomeScreen.dart';
import 'package:flutter/material.dart';

class Add extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            width: 374.7,
            height: 80.0,
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
                  color: const Color(0x0a000000),
                  offset: Offset(0, 8),
                  blurRadius: 24,
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 30, 0, 0),
              child: Text(
                'Add transaction',
                style: TextStyle(
                  fontFamily: 'GT Walsheim Pro',
                  fontSize: 24,
                  color: const Color(0xff1c202e),
                  fontWeight: FontWeight.w700,
                  height: 0.9575852553049723,
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: Image.asset(
              "images/loginImage.png",
              height: 200.0,
              width: 200.0,
            ),
          ),
          // Adobe XD layer: 'What kind of transac' (text)
          SizedBox(
            width: 267.0,
            height: 69.0,
            child: Text(
              'What kind of transaction it is?',
              style: TextStyle(
                fontFamily: 'GT Walsheim Pro',
                fontSize: 24,
                color: const Color(0xcc1c202e),
                fontWeight: FontWeight.w700,
                height: 1.25,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          // Adobe XD layer: 'Bar' (shape)
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              FlatButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AddIncome()));
                },
                child: Container(
                  width: 145.0,
                  height: 172.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: const Color(0xffffffff),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0x08000000),
                        offset: Offset(0, 18),
                        blurRadius: 36,
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      // Adobe XD layer: 'Oval' (shape)
                      Container(
                        width: 36.0,
                        height: 36.0,
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.all(Radius.elliptical(18.0, 18.0)),
                          color: const Color(0xff33c9ff),
                        ),
                        child: Center(
                          child: Text(
                            "|<",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15.0,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),
                      ),

                      Text(
                        'Income',
                        style: TextStyle(
                          fontFamily: 'GT Walsheim Pro',
                          fontSize: 21,
                          color: const Color(0xff1c202e),
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                ),
              ), // Income Button
              FlatButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AddExpense()));
                },
                child: Container(
                  width: 145.0,
                  height: 172.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: const Color(0xffffffff),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0x08000000),
                        offset: Offset(0, 18),
                        blurRadius: 36,
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      // Adobe XD layer: 'Oval' (shape)
                      Container(
                        width: 36.0,
                        height: 36.0,
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.all(Radius.elliptical(18.0, 18.0)),
                          color: Color(0xffff3378),
                        ),
                        child: Center(
                          child: Text(
                            ">|",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15.0,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),
                      ),

                      Text(
                        'Expense',
                        style: TextStyle(
                          fontFamily: 'GT Walsheim Pro',
                          fontSize: 21,
                          color: const Color(0xff1c202e),
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                ),
              ), // Expense Button
            ],
          ),
        ],
      ),
    );
  }
}
// Adobe XD layer: 'Oval' (shape)
