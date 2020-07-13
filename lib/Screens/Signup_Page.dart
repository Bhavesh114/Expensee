import 'package:expensee/Screens/Login_Screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:expensee/Constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen>
    with TickerProviderStateMixin {
  String name = "";
  String email = " ";
  String password = " ";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              width: 374.7,
              height: 116.0,
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
                padding: const EdgeInsets.only(top: 35.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 22.0),
                      child: Text(
                        'Budget tracker',
                        style: TextStyle(
                          fontFamily: 'GT Walsheim Pro',
                          fontSize: 18,
                          color: const Color(0xff1c202e),
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w300,
                          height: 1.2767803404066298,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 130.0),
                      child: FlatButton(
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        child: Text(
                          'Login',
                          style: TextStyle(
                            fontFamily: 'GT Walsheim Pro',
                            fontSize: 15,
                            color: const Color(0xffff3378),
                          ),
                          textAlign: TextAlign.right,
                        ),
                        onPressed: () {
                          print("Login");
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Loginscreen(),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: Image.asset(
                "images/loginImage.png",
                height: 180.0,
                width: 200.0,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0, right: 90.0),
              child: Text(
                'Sign up to Budget Tracker',
                style: TextStyle(
                  fontFamily: 'GT Walsheim Pro',
                  fontSize: 20,
                  color: const Color(0xff1c202e),
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0, right: 265.0),
              child: Text(
                'Your name',
                style: TextStyle(
                  fontFamily: 'GT Walsheim Pro',
                  fontSize: 12,
                  color: const Color(0xffaeb1b8),
                ),
                textAlign: TextAlign.left,
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(right: 35.0, left: 19.0, bottom: 0.0),
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                onChanged: (value) {
                  setState(() {
                    name = value;
                  });
                },
                style: kInputActiveTextField,
                decoration: kInputLoginTextFieldDecoration.copyWith(
                    hintText: "Your name"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 35.0, left: 19.0),
              child: Divider(
                thickness: 1.5,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0, right: 290.0),
              child: Text(
                'Email',
                style: TextStyle(
                  fontFamily: 'GT Walsheim Pro',
                  fontSize: 12,
                  color: const Color(0xffaeb1b8),
                ),
                textAlign: TextAlign.left,
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(right: 35.0, left: 19.0, bottom: 0.0),
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                onChanged: (value) {
                  setState(() {
                    email = value;
                  });
                },
                style: kInputActiveTextField,
                decoration: kInputLoginTextFieldDecoration.copyWith(
                    hintText: "name@domain.com"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 35.0, left: 19.0),
              child: Divider(
                thickness: 1.5,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  width: 215.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0, left: 20.0),
                        child: Text(
                          'Password',
                          style: TextStyle(
                            fontFamily: 'GT Walsheim Pro',
                            fontSize: 12,
                            color: const Color(0xffaeb1b8),
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 19.0, bottom: 0.0),
                        child: TextField(
                          keyboardType: TextInputType.emailAddress,
                          obscureText: true,
                          onChanged: (value) {
                            setState(() {
                              password = value;
                            });
                          },
                          style: kInputActiveTextField,
                          decoration: kInputLoginTextFieldDecoration.copyWith(
                              hintText: "*******"),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 19.0),
                        child: Divider(
                          thickness: 1.5,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: FlatButton(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onPressed: () async {},
                    child: Image.asset(
                      "images/loginButton.PNG",
                      height: 70.0,
                      width: 70.0,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
              child: SizedBox(
                width: 18.0,
                child: Text(
                  'or',
                  style: TextStyle(
                    fontFamily: 'GT Walsheim Pro',
                    fontSize: 12,
                    color: const Color(0x801c202e),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            FlatButton(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onPressed: () {
                print("Sign up with FaceBook");
              },
              child: Stack(
                children: <Widget>[
                  Container(
                    width: 300.0,
                    height: 48.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(
                          width: 1.0, color: const Color(0xff3b5998)),
                    ),
                  ),
                  Transform.translate(
                    offset: Offset(17.54, 17.67),
                    child: SizedBox(
                      width: 266.0,
                      height: 50.0,
                      child: SingleChildScrollView(
                          child: Text(
                        'Sign up with facebook',
                        style: TextStyle(
                          fontFamily: 'GT Walsheim Pro',
                          fontSize: 15,
                          color: const Color(0xff3b5998),
                          fontWeight: FontWeight.w500,
                          height: 0.9,
                        ),
                        textAlign: TextAlign.center,
                      )),
                    ),
                  ),
                  Transform.translate(
                    offset: Offset(23.08, 16.0),
                    child:
                        // Adobe XD layer: 'Shape' (shape)
                        SvgPicture.string(
                      '<svg viewBox="23.1 16.0 7.4 17.0" ><path transform="translate(23.08, 16.0)" d="M 4.910446643829346 17 L 4.910446643829346 8.499004364013672 L 7.095101356506348 8.499004364013672 L 7.384615421295166 5.569514751434326 L 4.910446643829346 5.569514751434326 L 4.914158344268799 4.10327672958374 C 4.914158344268799 3.339220523834229 4.981742858886719 2.929821729660034 6.003392696380615 2.929821729660034 L 7.369149684906006 2.929821729660034 L 7.369149684906006 0 L 5.184185981750488 0 C 2.559692859649658 0 1.635939240455627 1.421117901802063 1.635939240455627 3.810991287231445 L 1.635939240455627 5.569846630096436 L 0 5.569846630096436 L 0 8.499336242675781 L 1.635939240455627 8.499336242675781 L 1.635939240455627 17 L 4.910446643829346 17 Z" fill="#3b5998" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>',
                      allowDrawingOutsideViewBox: true,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
