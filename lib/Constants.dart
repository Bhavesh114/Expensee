import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

const TextStyle kInputLoginHIntText = TextStyle(
  fontFamily: 'GT Walsheim Pro',
  fontSize: 20,
  color: const Color(0x1f1c202e),
  fontWeight: FontWeight.w700,
);

const InputDecoration kInputLoginTextFieldDecoration = InputDecoration(
  hintStyle: kInputLoginHIntText,
  border: InputBorder.none,
  focusedBorder: InputBorder.none,
  enabledBorder: InputBorder.none,
  errorBorder: InputBorder.none,
  disabledBorder: InputBorder.none,
  contentPadding: EdgeInsets.all(0),
);

const TextStyle kInputActiveTextField = TextStyle(
  fontFamily: 'GT Walsheim Pro',
  fontSize: 20,
  color: const Color(0xFF000000),
  fontWeight: FontWeight.w700,
);
const kHeadingStyle = TextStyle(
  fontFamily: 'GT Walsheim Pro',
  fontSize: 27,
  color: const Color(0xff1c202e),
  fontWeight: FontWeight.w700,
);

const kOnboardingTextStyle = TextStyle(
  fontFamily: 'GT Walsheim Pro',
  fontSize: 17,
  color: const Color(0x991c202e),
);

const kboxDecoration = BoxDecoration(
  borderRadius: BorderRadius.only(
    topLeft: Radius.circular(23.98),
    topRight: Radius.circular(23.98),
    bottomRight: Radius.circular(35.97),
    bottomLeft: Radius.circular(35.97),
  ),
  color: const Color(0xfff2f2f2),
  boxShadow: [
    BoxShadow(
      color: Color(0xffb5b5b5),
      offset: Offset(0, 8),
      blurRadius: 24,
    ),
  ],
);

const kCalendarStyle = CalendarStyle(
  todayColor: Color(0xfff5bfd1),
  selectedColor: const Color(0xffff3378),
);