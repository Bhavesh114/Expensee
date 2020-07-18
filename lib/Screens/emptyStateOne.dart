import 'package:flutter/material.dart';


class EmptyStateDaily extends StatefulWidget {
  @override
  _EmptyStateDailyState createState() => _EmptyStateDailyState();
}

class _EmptyStateDailyState extends State<EmptyStateDaily> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 374.7,
        height: 185.9,
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
      ),
    );
  }
}
