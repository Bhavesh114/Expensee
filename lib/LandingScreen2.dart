import 'package:expensee/Screens/Login_Screen.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'Screens/Login_Screen.dart';
import 'package:expensee/models/user.dart';
import 'BottomBar.dart';

class LandingPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);

    if (user == null)
      return Loginscreen();
    else
      return BottomBar();
  }
}
