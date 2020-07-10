import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AuthServices {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future register(String email, String password) async {
    try {
      final newUser = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      return newUser;
    } catch (e) {
      print(e);
    }
  }

  Future signIn(String email, String password) async {
    try {
      final newUser = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      return newUser;
    } catch (e) {
      print(e);
    }
  }
}
