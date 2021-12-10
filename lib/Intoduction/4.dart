import 'package:flutter/material.dart';
import 'package:learn_flutter/Course/Intro.dart';
import 'package:learn_flutter/Intoduction/5.dart';
import 'package:lottie/lottie.dart';
class Version extends StatelessWidget {
  const Version({ Key? key }) : super(key: key);

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
      body: Padding(padding: EdgeInsets.all(8),
      child: SingleChildScrollView(
        child: Column(
          children: [
              Center(
                child: SizedBox(
                  height: height * 0.3,
                  width: width * 0.5,
                  child: Lottie.asset('Assets/4.json'),
                ),
              ),
              Container(
                child: Text('Understanding Flutter Versions', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
              ),
              SizedBox(height: height * 0.02,),
              Container(
                child: Text(
                  "Flutter is a UI based application that is used to create clean, beautiful, and natively compiled applications from a single codebase. The applications developed by Flutter can be mobile (both iOS and Android), web, and desktop-based applications. It is free and open-source and used widely by organizations. Dart is a language that is used to create Flutter applications. The first and foremost version of Flutter was named “Sky” which ran only for the Android applications. It was released on 4th December 2018 and has evolved over time and its many new versions were released in such a short period of time.",
                style: TextStyle(fontSize: 17),
                ),
              ),
              SizedBox(height: height * 0.02,),
              Center(
                child: Image.asset('Assets/4.png'),
              ),
              SizedBox(height: height * 0.02,),
              Container(
                child: Text('History Of Flutter (Versions)', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
              ),
              SizedBox(height: height * 0.02,),
               Container(
                child: Text(
                  "Flutter was introduced to the world by the tech giant Google at the DART conference back in 2015. But, its final stable version was released in late 2018 (In December), and since then, the popularity of Flutter development is growing every passing day. A lot of tech giants used Flutter to upgrade their app, and it made Flutter quite famous. Alibaba launched some famous apps which were built with Flutter, and Google itself, launched the Google ads app in Flutter, so, these reasons made it quite famous. Now, let’s see some Flutter features that made Flutter development famous worldwide, and made developers learn Flutter development. The main advantage of choosing Flutter development is its cross-platform code support. It means the developers have to write code only once instead of coding separately for each platform Android and iOS. The single codebase saves time and development costs both, so it leads to faster and cost-effective app development.",
                style: TextStyle(fontSize: 17),
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
                .push(MaterialPageRoute(builder: (context) => MacSetup()));
        },
      ),
    );
  }
}