// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:learn_flutter/Course/dart1.dart';
import 'package:learn_flutter/Course/Intro.dart';

class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  final double _boderRadius = 24;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.all(10),
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  height: height * .35,
                  width: width * .9,
                  color: Colors.white,
                  child: Column(
                    children: [
                      SizedBox(height: height * 0.02),
                      Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Learn Flutter',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 25),
                          )),
                      SizedBox(height: height * 0.02),
                      Text(
                        'This is your path to a career in Flutter design. In this program, you’ll learn in-demand skills that will have you job-ready in less than 6 months. No degree or experience required.',
                        style: GoogleFonts.poppins(
                          fontSize: 17,
                        ),
                      ),
                      SizedBox(height: height * 0.02),
                      Row(
                        children: [
                          Container(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Rating',
                              style: GoogleFonts.poppins(
                                fontSize: 17,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          SizedBox(width: width * 0.01),
                          Icon(Icons.star_rounded, color: Colors.yellow[700]),
                          SizedBox(
                            width: 2,
                          ),
                          Icon(Icons.star_rounded, color: Colors.yellow[700]),
                          SizedBox(
                            width: 2,
                          ),
                          Icon(Icons.star_rounded, color: Colors.yellow[700]),
                          SizedBox(
                            width: 2,
                          ),
                          Icon(Icons.star_rounded, color: Colors.yellow[700]),
                          SizedBox(
                            width: 2,
                          ),
                          Icon(Icons.star_rounded, color: Colors.grey[400]),
                          SizedBox(
                            width: 6,
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              '4.8',
                              style: GoogleFonts.poppins(
                                fontSize: 17,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  )),
              SizedBox(
                height: height * 0.01,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => Intro()));
                },
                child: Container(
                  padding: EdgeInsets.all(9),
                  height: height * .10,
                  width: width * .9,
                  child: Center(
                      child: Text(
                    'Introduction',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(_boderRadius),
                      gradient: LinearGradient(
                        colors: [Colors.pink, Colors.red],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.red,
                            blurRadius: 12,
                            offset: Offset(0, 6))
                      ]),
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => Dps()));
                },
                child: Container(
                  padding: EdgeInsets.all(9),
                  height: height * .10,
                  width: width * .9,
                  child: Center(
                      child: Text(
                    'Dart Programming Syntax',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(_boderRadius),
                      gradient: LinearGradient(
                        colors: [Colors.pink, Colors.red],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.red,
                            blurRadius: 12,
                            offset: Offset(0, 6))
                      ]),
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Container(
                padding: EdgeInsets.all(9),
                height: height * .10,
                width: width * .9,
                child: Center(
                    child: Text(
                  'State Management in Flutter',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                )),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(_boderRadius),
                    gradient: LinearGradient(
                      colors: [Colors.pink, Colors.red],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.red,
                          blurRadius: 12,
                          offset: Offset(0, 6))
                    ]),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Container(
                height: height * .10,
                width: width * .9,
                child: Center(
                    child: Text(
                  'Flutter Widgets Fundamentals',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                )),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(_boderRadius),
                    gradient: LinearGradient(
                      colors: [Colors.pink, Colors.red],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.red,
                          blurRadius: 12,
                          offset: Offset(0, 6))
                    ]),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Container(
                padding: EdgeInsets.all(9),
                height: height * .10,
                width: width * .9,
                child: Center(
                    child: Text(
                  'Navigation and Routing',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                )),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(_boderRadius),
                    gradient: LinearGradient(
                      colors: [Colors.pink, Colors.red],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.red,
                          blurRadius: 12,
                          offset: Offset(0, 6))
                    ]),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Container(
                padding: EdgeInsets.all(9),
                height: height * .10,
                width: width * .9,
                child: Center(
                    child: Text(
                  'Working with Firebase',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                )),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(_boderRadius),
                    gradient: LinearGradient(
                      colors: [Colors.pink, Colors.red],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.red,
                          blurRadius: 12,
                          offset: Offset(0, 6))
                    ]),
              ),
              SizedBox(
                height: height * 0.02,
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
