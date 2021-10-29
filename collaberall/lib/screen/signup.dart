// ignore_for_file: prefer_const_constructors, unnecessary_import

import 'package:collaberall/screen/signupsuccess.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isKeyboard = MediaQuery.of(context).viewInsets.bottom != 0;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.fromLTRB(20, 0, 20, 15),
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
              height: MediaQuery.of(context).size.height / 15,
            ),
            if (!isKeyboard)
              Container(
                width: MediaQuery.of(context).size.width / 5,
                height: MediaQuery.of(context).size.height / 5,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/LOGO.png'),
                  ),
                ),
              ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 15,
            ),
            Container(
              height: MediaQuery.of(context).size.height / 10,
              alignment: Alignment.center,
              padding: EdgeInsets.all(20),
              child: SizedBox(
                width: 500,
                child: TextField(
                  showCursor: true,
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.person_rounded,
                    ),
                    hintText: 'NAME',
                  ),
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height / 10,
              alignment: Alignment.center,
              padding: EdgeInsets.all(20),
              child: SizedBox(
                width: 500,
                child: TextField(
                  showCursor: true,
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    hintText: 'EMAIL',
                  ),
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height / 10,
              alignment: Alignment.center,
              padding: EdgeInsets.all(20),
              child: SizedBox(
                width: 500,
                child: TextField(
                  showCursor: true,
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock_rounded),
                    hintText: 'PASSWORD',
                  ),
                ),
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  OutlinedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignUpCheck(),
                        ),
                      );
                    },
                    child: Text(
                      'SIGN UP',
                      style: GoogleFonts.baloo(
                        fontSize: 20,
                        fontWeight: FontWeight.w100,
                        color: Colors.black,
                      ),
                    ),
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      backgroundColor: Colors.white,
                      side: const BorderSide(
                        color: Color.fromARGB(255, 70, 70, 70),
                      ),
                      primary: Colors.white,
                      onSurface: Colors.grey,
                      minimumSize: const Size(400, 60),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 100,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'or',
                        style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 100,
                  ),
                  ElevatedButton(
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
