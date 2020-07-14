import 'package:expensee/Screens/Onboarding_Screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:expensee/models/user.dart';
import 'package:expensee/Screens/home.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);

    if (user == null)
      return OnboardingScreen();
    else
      return HomePage();
  }
}
