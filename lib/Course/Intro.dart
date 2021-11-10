import 'package:flutter/material.dart';
import 'package:learn_flutter/Intoduction/3.dart';
import 'package:learn_flutter/Intoduction/4.dart';
import 'package:learn_flutter/Intoduction/5.dart';
import 'package:learn_flutter/Intoduction/6.dart';
import 'package:learn_flutter/Intoduction/7.dart';
import 'package:learn_flutter/Intoduction/Understand.dart';
import 'package:learn_flutter/Intoduction/WFlutter.dart';

import 'package:learn_flutter/Screens/HomeScreen.dart';

class Intro extends StatefulWidget {
  const Intro({Key? key}) : super(key: key);

  @override
  _IntroState createState() => _IntroState();
}

class _IntroState extends State<Intro> {
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
                  .push(MaterialPageRoute(builder: (context) => HomeScreen()));
            },
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: height * .05,
                        width: width * .45,
                        child: Center(
                            child: Text(
                          'What is Flutter ? ',
                          style: TextStyle(
                              // fontWeight: FontWeight.bold,
                              fontSize: 24,
                              color: Colors.blueGrey,
                              decoration: TextDecoration.underline),
                        )),
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Whflutter()));
                      },
                      icon: Icon(
                        Icons.arrow_forward_rounded,
                        color: Colors.blue,
                        size: 27,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: height * .10,
                        width: width * .70,
                        child: Center(
                            child: Text(
                          'Understanding The Flutter Architechure ',
                          style: TextStyle(
                              // fontWeight: FontWeight.bold,
                              fontSize: 24,
                              color: Colors.blueGrey,
                              decoration: TextDecoration.underline),
                        )),
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => UnderStand1()));
                      },
                      icon: Icon(
                        Icons.arrow_forward_rounded,
                        color: Colors.blue,
                        size: 27,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: height * .10,
                        width: width * .70,
                        child: Center(
                            child: Text(
                          'How Flutter And Dart Code Compiled',
                          style: TextStyle(
                              // fontWeight: FontWeight.bold,
                              fontSize: 24,
                              color: Colors.blueGrey,
                              decoration: TextDecoration.underline),
                        )),
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => How()));
                      },
                      icon: Icon(
                        Icons.arrow_forward_rounded,
                        color: Colors.blue,
                        size: 27,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: height * .10,
                        width: width * .60,
                        child: Center(
                            child: Text(
                          'Understanding Flutter Versions',
                          style: TextStyle(
                              // fontWeight: FontWeight.bold,
                              fontSize: 24,
                              color: Colors.blueGrey,
                              decoration: TextDecoration.underline),
                        )),
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Version()));
                      },
                      icon: Icon(
                        Icons.arrow_forward_rounded,
                        color: Colors.blue,
                        size: 27,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: height * .05,
                        width: width * .57,
                        child: Center(
                            child: Text(
                          'Flutter MacOS Setup',
                          style: TextStyle(
                              // fontWeight: FontWeight.bold,
                              fontSize: 24,
                              color: Colors.blueGrey,
                              decoration: TextDecoration.underline),
                        )),
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => MacSetup()));
                      },
                      icon: Icon(
                        Icons.arrow_forward_rounded,
                        color: Colors.blue,
                        size: 27,
                      ),
                    ),
                  ],
                ),
                
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: height * .10,
                        width: width * .50,
                        child: Center(
                            child: Text(
                          'Flutter Windows Setup',
                          style: TextStyle(
                              // fontWeight: FontWeight.bold,
                              fontSize: 24,
                              color: Colors.blueGrey,
                              decoration: TextDecoration.underline),
                        )),
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => WindowSetUp()));
                      },
                      icon: Icon(
                        Icons.arrow_forward_rounded,
                        color: Colors.blue,
                        size: 27,
                      ),
                    ),
                  ],
                ),
                
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: height * .10,
                        width: width * .40,
                        child: Center(
                            child: Text(
                          'Course Outline',
                          style: TextStyle(
                              // fontWeight: FontWeight.bold,
                              fontSize: 24,
                              color: Colors.blueGrey,
                              decoration: TextDecoration.underline),
                        )),
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Course()));
                      },
                      icon: Icon(
                        Icons.arrow_forward_rounded,
                        color: Colors.blue,
                        size: 27,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
