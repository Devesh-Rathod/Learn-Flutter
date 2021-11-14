import 'package:flutter/material.dart';
import 'package:learn_flutter/Course/Intro.dart';
import 'package:lottie/lottie.dart';
import 'package:url_launcher/url_launcher.dart';

class MacSetup extends StatelessWidget {
  const MacSetup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String pATH = "PATH";
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
                child: Text('Flutter MacOS Setup',
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
                  "Operating Systems: macOS",
                  style: TextStyle(fontSize: 17),
                ),
              ),
              ListTile(
                leading: MyBullet(),
                title: Text(
                  "Disk Space: 2.8 GB (does not include disk space for IDE/tools).",
                  style: TextStyle(fontSize: 17),
                ),
              ),
              ListTile(
                leading: MyBullet(),
                title: Text(
                  "Tools: Flutter uses git for installation and upgrade. We recommend installing Xcode, which includes git, but you can also install git separately.",
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
                          'https://storage.googleapis.com/flutter_infra_release/releases/stable/macos/flutter_macos_2.5.3-stable.zip');
                    },
                    child: Text('Download')),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Container(
                child: Text('Run these command on Mac terminal',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 19)),
              ),
              ListTile(
                leading: MyBullet(),
                title: Text(
                  " cd ~/development",
                  style: TextStyle(fontSize: 17),
                ),
              ),
              ListTile(
                leading: MyBullet(),
                title: Text(
                  "unzip ~/Downloads/flutter_macos_2.5.3-stable.zip",
                  style: TextStyle(fontSize: 17),
                ),
              ),
              ListTile(
                leading: MyBullet(),
                title: Text(
                  'export PATH="$pATH:`pwd`/flutter/bin"',
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
