import 'package:flutter/material.dart';
import 'package:learn_flutter/Course/Intro.dart';
import 'package:lottie/lottie.dart';

class How extends StatelessWidget {
  const How({Key? key}) : super(key: key);

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
                  child: Lottie.asset('Assets/3.json'),
                ),
              ),
              Container(
                child: Text('How Flutter And Dart Code Compiled',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Container(
                child: Text(
                  "In general, creating a mobile application is a very complex and challenging task. There are many frameworks available, which provide excellent features to develop mobile applications. For developing mobile apps, Android provides a native framework based on Java and Kotlin language, while iOS provides a framework based on Objective-C/Swift language. Thus, we need two different languages and frameworks to develop applications for both OS. Today, to overcome form this complexity, there are several frameworks have introduced that support both OS along with desktop apps. These types of the framework are known as cross-platform development tools.",
                  style: TextStyle(fontSize: 17),
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Container(
                child: Text('How flutter code compiles for Android',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              ListTile(
                leading: MyBullet(),
                title: Text(
                  "Graphics Engine’s C and C++ code are compiled with the help of Android’s NDK (Native Development Kit).",
                  style: TextStyle(fontSize: 17),
                ),
              ),
              ListTile(
                leading: MyBullet(),
                title: Text(
                  "The dart code both SDK’s and ours are compiled through AOT (Ahead-of-Time) compilation process to native ARM and x86 libraries.",
                  style: TextStyle(fontSize: 17),
                ),
              ),
              ListTile(
                leading: MyBullet(),
                title: Text(
                  "After successful compilation, the APK file is generated.",
                  style: TextStyle(fontSize: 17),
                ),
              ),
              ListTile(
                leading: MyBullet(),
                title: Text(
                  "Any widget rendering, input-output, event handling and so on is done by compiled app code.",
                  style: TextStyle(fontSize: 17),
                ),
              ),
              ListTile(
                leading: MyBullet(),
                title: Text(
                  "Here notice that Debug mode builds use a Dart virtual machine to run Dart code in order to enable stateful hot reload.",
                  style: TextStyle(fontSize: 17),
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Container(
                child: Text('How flutter code compiles for iOS',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              ListTile(
                leading: MyBullet(),
                title: Text(
                  "Graphics Engine’s C and C++ code are compiled with the help of LLVM (Low-Level Virtual Machine).",
                  style: TextStyle(fontSize: 17),
                ),
              ),
              ListTile(
                leading: MyBullet(),
                title: Text(
                  "The dart code both SDK’s and ours are compiled through AOT (Ahead-of-Time) compilation process to native ARM libraries.",
                  style: TextStyle(fontSize: 17),
                ),
              ),
              ListTile(
                leading: MyBullet(),
                title: Text(
                  "After successful compilation, the IPA (iOS extension same as APK) file is generated.",
                  style: TextStyle(fontSize: 17),
                ),
              ),
              ListTile(
                leading: MyBullet(),
                title: Text(
                  "Any widget rendering, input-output, event handling and so on is done by compiled app code.",
                  style: TextStyle(fontSize: 17),
                ),
              ),
              ListTile(
                leading: MyBullet(),
                title: Text(
                  "Here notice that Debug mode builds use a Dart virtual machine to run Dart code in order to enable stateful hot reload.",
                  style: TextStyle(fontSize: 17),
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
            ],
          ),
        ),
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
