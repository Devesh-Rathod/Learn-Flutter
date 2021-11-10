import 'package:flutter/material.dart';
import 'package:learn_flutter/Course/Intro.dart';
import 'package:lottie/lottie.dart';
import 'package:url_launcher/url_launcher.dart';

class WindowSetUp extends StatelessWidget {
  const WindowSetUp({Key? key}) : super(key: key);

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
                  child: Lottie.asset('Assets/5.json'),
                ),
              ),
              Container(
                child: Text('Flutter Windows Setup',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Container(
                child: Text('System Requirement',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 19)),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              ListTile(
                leading: MyBullet(),
                title: Text(
                  "Windows 7 SP1 or later (64-bit), x86-64 based.",
                  style: TextStyle(fontSize: 17),
                ),
              ),
              ListTile(
                leading: MyBullet(),
                title: Text(
                  "Disk Space: 1.64 GB (does not include disk space for IDE/tools).",
                  style: TextStyle(fontSize: 17),
                ),
              ),
              ListTile(
                leading: MyBullet(),
                title: Text(
                  "Tools: Flutter depends on these tools being available in your environment. Windows PowerShell 5.0 or newer (this is pre-installed with Windows 10) Git for Windows 2.x, with the Use Git from the Windows Command Prompt option. If Git for Windows is already installed, make sure you can run git commands from the command prompt or PowerShell.",
                  style: TextStyle(fontSize: 17),
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Container(
                child: Text('Get the Flutter SDK',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Center(
                child: ElevatedButton(
                    onPressed: () {
                      launch(
                          'https://storage.googleapis.com/flutter_infra_release/releases/stable/windows/flutter_windows_2.5.3-stable.zip');
                    },
                    child: Text('Download')),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Container(
                child: Text('Run these command on Commmand Prompt',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 19)),
              ),
              ListTile(
                leading: MyBullet(),
                title: Text(
                  "C:\path-to-dart-sdk\bin\dart.exe ",
                  style: TextStyle(fontSize: 17),
                ),
              ),
              ListTile(
                leading: MyBullet(),
                title: Text(
                  "  PS where.exe flutter dart",
                  style: TextStyle(fontSize: 17),
                ),
              ),
              ListTile(
                leading: MyBullet(),
                title: Text(
                  'C:\dev\src\dart-sdk\bin\dart.exe',
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
