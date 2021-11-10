// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:learn_flutter/Screens/Course/Intro.dart';

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
                 
                  
                  GestureDetector(
                    onTap: (){
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => Intro()));
                    },
                    child: Container(
                      
                      padding: EdgeInsets.all(9),
                      height: height * .15,
                      width: width * .9,
                      child : Text('Intro'),
                      
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
                    height: 30,
                  ),
                  Container(
                    padding: EdgeInsets.all(9),
                    height: height * .15,
                    width: width * .9,
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
                    height: 30,
                  ),
                  Container(
                    padding: EdgeInsets.all(9),
                    height: height * .15,
                    width: width * .9,
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
                    height: 30,
                  ),
                  Container(
                    
                    height: height * .15,
                    width: width * .9,
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
                    height: 30,
                  ),
                  Container(
                    padding: EdgeInsets.all(9),
                    height: height * .15,
                    width: width * .9,
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
                    height: 30,
                  ),
                  Container(
                    padding: EdgeInsets.all(9),
                    height: height * .15,
                    width: width * .9,
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
                    height: 30,
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
