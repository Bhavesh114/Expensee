import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../LandingScreen2.dart';

import 'package:expensee/Constants.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final int _numPages = 3;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < _numPages; i++) {
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      height: 8.0,
      width: isActive ? 10.0 : 8.0,
      decoration: BoxDecoration(
        color: isActive ? Color(0xffFF3378) : Color(0xffe6d5de),
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(
              height: 50.0,
            ),
            Container(
              height: 500.0,
              child: PageView(
                physics: ClampingScrollPhysics(),
                controller: _pageController,
                onPageChanged: (int page) {
                  setState(() {
                    _currentPage = page;
                  });
                },
                children: <Widget>[
                  OnboardingWidget(
                    heading: 'Welcome to Expensee',
                    text:
                        'An easy way to keep a track of your income and expenses',
                    images: AssetImage('images/onboarding1.png'),
                  ),
                  OnboardingWidget(
                    heading: 'Manage Transactions',
                    text:
                        'Add income and expenses according to the date and modify whenever needed',
                    images: AssetImage('images/onboarding2.png'),
                  ),
                  OnboardingWidget(
                    heading: 'Graphical Analysis',
                    text:
                        'Get a visual analysis of your transactions to have a clearer picture ',
                    images: AssetImage('images/onboarding3.png'),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: _buildPageIndicator(),
            ),
            SizedBox(height: 20.0),
            _currentPage != _numPages - 1
                ? Container(
                    alignment: Alignment.center,
                    child: FlatButton(
                      onPressed: () => Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LandingPage2())),
                      child: Text(
                        'Skip',
                        style: TextStyle(
                            color: Color(0xffFF3378),
                            fontSize: 17.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ) //Image(image: AssetImage('images/legalMind.png')),

                : Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 70.0),
                    child: RaisedButton(
                      onPressed: () => Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LandingPage2())),
                      color: Color(0xffFF3378),
                      textColor: Colors.white,
                      padding: EdgeInsets.all(15.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100.0),
                        side: BorderSide(color: Color(0xffFF3378)),
                      ),
                      child: Text(
                        'Get Started',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}

class OnboardingWidget extends StatelessWidget {
  OnboardingWidget(
      {@required this.text, @required this.images, @required this.heading});
  final ImageProvider images;
  final String text;
  final String heading;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            heading,
            style: kHeadingStyle,
            textAlign: TextAlign.left,
          ),
          SizedBox(height: 10.0),
          Text(
            text,
            style: kOnboardingTextStyle,
            textAlign: TextAlign.left,
          ),
          SizedBox(height: 20.0),
          Center(
            child: Image(
              image: images,
              height: 310.0,
              width: 310.0,
            ),
          ),
        ],
      ),
    );
  }
}
