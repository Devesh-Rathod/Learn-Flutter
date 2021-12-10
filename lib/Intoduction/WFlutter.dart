import 'package:flutter/material.dart';
import 'package:learn_flutter/Course/Intro.dart';
import 'package:learn_flutter/Intoduction/Understand.dart';
import 'package:lottie/lottie.dart';

class Whflutter extends StatelessWidget {
  const Whflutter({Key? key}) : super(key: key);

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
                  width: width * 0.3,
                  child: Lottie.asset('Assets/Intro.json'),
                ),
              ),
              SizedBox(height: height * 0.02),
              Container(
                child: Text('What is Flutter ?', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
              ),
              SizedBox(height: height * 0.02,),
              Container(
                child: Text(
                  "In general, creating a mobile application is a very complex and challenging task. There are many frameworks available, which provide excellent features to develop mobile applications. For developing mobile apps, Android provides a native framework based on Java and Kotlin language, while iOS provides a framework based on Objective-C/Swift language. Thus, we need two different languages and frameworks to develop applications for both OS. Today, to overcome form this complexity, there are several frameworks have introduced that support both OS along with desktop apps. These types of the framework are known as cross-platform development tools.",
                style: TextStyle(fontSize: 17),
                ),
              ),
             SizedBox(height: height * 0.02,),
              Center(
                child: Image.asset('Assets/Pic.png'),
              ),
              
              Container(
                child: Text(
                  "Features of Flutter",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: height * 0.02,),
              Container(
                child: Text(
                  "Flutter gives easy and simple methods to start building beautiful mobile and desktop apps with a rich set of material design and widgets. Here, we are going to discuss its main features for developing the mobile framework.",
                style: TextStyle(fontSize: 16,),
                ),
              ),
              SizedBox(height: height * 0.02,),
              Container(
                child: Text(
                  "Prerequisite",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: height * 0.02,),
              Container(
                child: Text(
                  "Before learning Flutter in-depth, you must have a sound understanding of Dart programming, Android Studio, and web scripting languages such as HTML, JavaScript, and CSS.",
                style: TextStyle(fontSize: 17,),
                ),
              ),
               SizedBox(height: height * 0.02,),
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
                .push(MaterialPageRoute(builder: (context) => UnderStand1()));
        },
      ),
    );
  }
}
