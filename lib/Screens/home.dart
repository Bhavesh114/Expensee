import 'package:flutter/material.dart';
import 'package:expensee/services/Auth.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  AuthServices _authService = AuthServices();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: FlatButton(
        onPressed: () async {
          await _authService.signOut();
        },
        child: Text("Logout"),
      ),
    );
  }
}
