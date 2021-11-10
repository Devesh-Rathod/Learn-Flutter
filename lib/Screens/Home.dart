// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
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
              SizedBox(
                height: height * 0.02,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => Intro()));
                },
                child: Container(
                  padding: EdgeInsets.all(9),
                  height: height * .15,
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
                  height: height * .15,
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
                height: height * .15,
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
                height: height * .15,
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
                height: height * .15,
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
                height: height * .15,
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
