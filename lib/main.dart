import 'package:expensee/LandingPage.dart';
import 'package:expensee/services/Auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:expensee/models/user.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      value: AuthServices().user,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Lm Suite App',
        theme: ThemeData(
          primarySwatch: Colors.pink,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: LandingPage(),
      ),
    );
  }
}
