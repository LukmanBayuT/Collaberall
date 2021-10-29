// ignore_for_file: unnecessary_import, unused_import, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:collaberall/mainscreen/taskpage.dart';
import 'package:collaberall/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:google_fonts/google_fonts.dart';

class MainTask extends StatefulWidget {
  const MainTask({Key? key}) : super(key: key);

  @override
  _MainTaskState createState() => _MainTaskState();
}

class _MainTaskState extends State<MainTask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.fromLTRB(15, 15, 15, 0.0),
          color: Color(0xfff6f6f6),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(
                      bottom: 10.0,
                    ),
                    child: Text(
                      'COLLABERALL',
                      style: GoogleFonts.baloo(
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListView(
                      children: [
                        TaskCardWidget(
                          title: 'Tugas Negara',
                          desc: 'Percobaan Pertama Gahar!',
                        ),
                        TaskCardWidget(),
                        TaskCardWidget(),
                        TaskCardWidget(),
                      ],
                    ),
                  ),
                ],
              ),
              Positioned(
                height: 40.0,
                width: 40.0,
                bottom: 10.0,
                right: 0.0,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TaskPage(),
                      ),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xff7349fe),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Image(
                      image: AssetImage('assets/add.png'),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
