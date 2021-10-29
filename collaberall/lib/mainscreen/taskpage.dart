// ignore_for_file: unnecessary_import, unused_import, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:collaberall/pages/giventask.dart';
import 'package:collaberall/pages/maintask.dart';
import 'package:collaberall/pages/profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:google_fonts/google_fonts.dart';

class TaskPage extends StatefulWidget {
  const TaskPage({Key? key}) : super(key: key);

  @override
  _TaskPageState createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Row(
              children: [
                Image(
                  image: AssetImage('assets/back.png'),
                ),
                TextField(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
