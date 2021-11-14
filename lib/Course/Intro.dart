import 'package:flutter/material.dart';
import 'package:learn_flutter/Intoduction/3.dart';
import 'package:learn_flutter/Intoduction/4.dart';
import 'package:learn_flutter/Intoduction/5.dart';
import 'package:learn_flutter/Intoduction/6.dart';
import 'package:learn_flutter/Intoduction/7.dart';
import 'package:learn_flutter/Intoduction/Understand.dart';
import 'package:learn_flutter/Intoduction/WFlutter.dart';
import 'package:learn_flutter/Screens/Home.dart';

import 'package:learn_flutter/Screens/HomeScreen.dart';

class Intro extends StatefulWidget {
  const Intro({Key? key}) : super(key: key);

  @override
  _IntroState createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  final double _boderRadius = 24;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Introduction',
            style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.white,
          elevation: 0.1,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.blue,
            ),
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => homePage()));
            },
          ),
        ),
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
                          MaterialPageRoute(builder: (context) => Whflutter()));
                    },
                    child: Container(
                      padding: EdgeInsets.all(9),
                      height: height * .11,
                      width: width * .9,
                      child: Center(
                          child: Text(
                        'What Is Flutter ?',
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
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => UnderStand1()));
                    },
                    child: Container(
                      padding: EdgeInsets.all(9),
                      height: height * .11,
                      width: width * .9,
                      child: Center(
                          child: Text(
                        'Understanding The Flutter Architechure',
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
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => How()));
                    },
                    child: Container(
                      padding: EdgeInsets.all(9),
                      height: height * .11,
                      width: width * .9,
                      child: Center(
                          child: Text(
                        'How Flutter And Dart Code Compiled',
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
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => Version()));
                    },
                    child: Container(
                      padding: EdgeInsets.all(9),
                      height: height * .11,
                      width: width * .9,
                      child: Center(
                          child: Text(
                        'Understanding The Flutter Versions',
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
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => MacSetup()));
                    },
                    child: Container(
                      padding: EdgeInsets.all(9),
                      height: height * .11,
                      width: width * .9,
                      child: Center(
                          child: Text(
                        'Flutter MacOS Setup',
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
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => WindowSetUp()));
                    },
                    child: Container(
                      padding: EdgeInsets.all(9),
                      height: height * .11,
                      width: width * .9,
                      child: Center(
                          child: Text(
                        'Flutter Windows Setup',
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
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => Course()));
                    },
                    child: Container(
                      padding: EdgeInsets.all(9),
                      height: height * .11,
                      width: width * .9,
                      child: Center(
                          child: Text(
                        'Course Outline',
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
                ],
              ),
            ),
          ),
        ));
  }
}
