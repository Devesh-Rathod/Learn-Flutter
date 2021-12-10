import 'package:flutter/material.dart';
import 'package:learn_flutter/Course/Intro.dart';
import 'package:learn_flutter/Screens/HomeScreen.dart';
import 'package:lottie/lottie.dart';

class Course extends StatelessWidget {
  const Course({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('Introduction', style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),),
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.blue,
          ),
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => Intro()));
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: SizedBox(
                  height: height * 0.3,
                  width: width * 0.5,
                  child: Lottie.asset('Assets/7.json'),
                ),
              ),
              Container(
                child: Text('Course Outline', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
              ),
              SizedBox(height: height * 0.02,),
              ListTile(
                leading: MyBullet(),
                title: Text(
                  "Dart Programming Syntax",
                  style: TextStyle(fontSize: 17),
                ),
              ),
              ListTile(
                leading: MyBullet(),
                title: Text(
                  "State Management in Flutter",
                  style: TextStyle(fontSize: 17),
                ),
              ),
              ListTile(
                leading: MyBullet(),
                title: Text(
                  "Flutter Widgets Fundamentals",
                  style: TextStyle(fontSize: 17),
                ),
              ),
              ListTile(
                leading: MyBullet(),
                title: Text(
                  "Navigation and Routing",
                  style: TextStyle(fontSize: 17),
                ),
              ),
              ListTile(
                leading: MyBullet(),
                title: Text(
                  "Working with Firebase",
                  style: TextStyle(fontSize: 17),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        // isExtended: true,
        child: Icon(Icons.arrow_forward_outlined),
        backgroundColor: Colors.blue,
        onPressed: () {
          Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => HomeScreen()));
        },
      ),
    );
  }
}
class MyBullet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 10.0,
      width: 10.0,
      decoration: new BoxDecoration(
        color: Colors.black,
        shape: BoxShape.circle,
      ),
    );
  }
}