// ignore_for_file: unnecessary_import, unused_import, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:collaberall/pages/giventask.dart';
import 'package:collaberall/pages/maintask.dart';
import 'package:collaberall/pages/profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:google_fonts/google_fonts.dart';

class TaskCardWidget extends StatelessWidget {
  final title;
  final desc;
  TaskCardWidget({this.title, this.desc});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: 24.0,
      ),
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        vertical: 32.0,
        horizontal: 24.0,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title ?? "Title Tugas",
            style: GoogleFonts.poppins(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height / 40),
          Text(
            desc ??
                "'Hello pops! this is the default place where you can put the description, edit and delete ya task!'",
            style: GoogleFonts.poppins(
              fontSize: 13,
              fontWeight: FontWeight.normal,
              color: Colors.grey.shade800,
            ),
          ),
        ],
      ),
    );
  }
}
