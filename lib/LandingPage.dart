import 'package:expensee/Screens/onboarding_one.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:expensee/models/user.dart';
import 'package:expensee/Screens/home.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);

    if (user == null)
      return OnboardingOne();
    else
      return HomePage();
  }
}
