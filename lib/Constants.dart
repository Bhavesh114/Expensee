import 'package:flutter/material.dart';

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
