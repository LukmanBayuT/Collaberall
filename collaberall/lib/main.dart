// ignore_for_file: unused_import

import 'package:collaberall/mainscreen/mainnav.dart';
import 'package:collaberall/screen/login.dart';
import 'package:collaberall/screen/login_sign.dart';
import 'package:collaberall/screen/signup.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'COLLABERALL',
      theme: ThemeData(
        primaryColor: const Color(0xFF464646),
        primarySwatch: Colors.blue,
      ),
      home: const MainNav(),
    );
  }
}
