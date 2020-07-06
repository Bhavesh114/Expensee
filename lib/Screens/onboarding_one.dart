import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Login_Screen.dart';
import 'package:sk_onboarding_screen/sk_onboarding_model.dart';
import 'package:sk_onboarding_screen/sk_onboarding_screen.dart';

class OnboardingOne extends StatefulWidget {
  @override
  _OnboardingOneState createState() => _OnboardingOneState();
}

class _OnboardingOneState extends State<OnboardingOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SKOnboardingScreen(
        bgColor: Colors.white,
        themeColor: const Color(0xFFf74269),
        pages: pages,
        skipClicked: (value) {
          print("Skip");
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Loginscreen()));
        },
        getStartedClicked: (value) {
          print("Get Started");
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Loginscreen()));
        },
      ),
    );
  }
}

final pages = [
  SkOnboardingModel(
      title: 'Welcome to Expensee',
      description: 'Easily manage your income and expenses',
      titleColor: Colors.black,
      descripColor: const Color(0xFF929794),
      imagePath: 'images/onboarding1.png'),
  SkOnboardingModel(
      title: 'Modify Transactions at Ease',
      description: 'With just one click, add or delete transactions',
      titleColor: Colors.black,
      descripColor: const Color(0xFF929794),
      imagePath: 'images/onboarding2.png'),
  SkOnboardingModel(
      title: 'Get Monthly Analysis',
      description: 'Get details of your monthly transactions with visuals',
      titleColor: Colors.black,
      descripColor: const Color(0xFF929794),
      imagePath: 'images/onboarding3.png'),
];
