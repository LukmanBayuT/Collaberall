// ignore_for_file: prefer_const_constructors, unnecessary_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpCheck extends StatelessWidget {
  const SignUpCheck({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SafeArea(
            child: Column(
          children: <Widget>[
            Container(
              alignment: Alignment.topLeft,
              child: Text(
                'COLLABERALL',
                style: GoogleFonts.baloo(
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 20,
            ),
            Container(
              height: MediaQuery.of(context).size.height / 7,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/LOGO.png'),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 20,
            ),
            Text(
              'Thanks for the registration!',
              style: GoogleFonts.poppins(
                fontSize: 15,
                fontWeight: FontWeight.w800,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 20,
            ),
            Container(
              height: MediaQuery.of(context).size.height / 7,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/check.png'),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 20,
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: SizedBox(
                width: 500,
                height: 80,
                child: Text(
                  'Your account has been created and a verification email has been sent to your email address. please click on the verification link included in the email to activate your account',
                  style: GoogleFonts.poppins(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 20,
            ),
            SizedBox(
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  'LOGIN',
                  style: GoogleFonts.baloo(
                    fontSize: 20,
                    fontWeight: FontWeight.w100,
                    color: Colors.white,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  primary: const Color.fromARGB(255, 70, 70, 70),
                  onPrimary: Colors.grey,
                  minimumSize: const Size(400, 60),
                ),
              ),
            )
          ],
        )),
      ),
    );
  }
}
