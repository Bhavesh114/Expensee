import 'package:expensee/Screens/Login_Screen.dart';
import 'package:flutter/material.dart';
//import 'Screens/Login_Screen.dart';
import 'Screens/onboarding_one.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnboardingOne(),
    );
  }
}
