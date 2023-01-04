import 'dart:html';
import 'dart:js';

import 'package:flutter/material.dart';
import 'package:loginui/login.dart';
import 'package:loginui/register.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'login',
    routes: {
      'login' : (context) => LoginPage(),
      'register': (context) => MyRegister()},
  ));
}
