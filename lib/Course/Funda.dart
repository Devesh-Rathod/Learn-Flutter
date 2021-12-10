import 'package:flutter/material.dart';
import 'package:learn_flutter/Course/Nav.dart';
import 'package:learn_flutter/Screens/HomeScreen.dart';
import 'package:lottie/lottie.dart';

class Funda extends StatelessWidget {
  const Funda({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Flutter Widgets And Fundamental',
          style:
              TextStyle(color: Colors.blueAccent, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.blueAccent,
          ),
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => HomeScreen()));
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
              SizedBox(
                height: height * 0.04,
              ),
              Container(
                child: Text('Flutter Widgets',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
              ),
              SizedBox(
                height: height * 0.04,
              ),
              Container(
                child: Text(
                  "Whenever you are going to code for building anything in Flutter, it will be inside a widget. The central purpose is to build the app out of widgets. It describes how your app view should look like with their current configuration and state. When you made any alteration in the code, the widget rebuilds its description by calculating the difference of previous and current widget to determine the minimal changes for rendering in UI of the app.",
                  style: TextStyle(fontSize: 17),
                ),
              ),
              SizedBox(height: height * 0.02),
              Container(
                child: Text(
                  "Widgets are nested with each other to build the app. It means the root of your app is itself a widget, and all the way down is a widget also. For example, a widget can display something, can define design, can handle interaction, etc.",
                  style: TextStyle(fontSize: 17),
                ),
              ),
              SizedBox(height: height * 0.02),
              Container(
                child: Text(
                  "The below image is a simple visual representation of the widget tree.",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
              ),
              Image.asset('Assets/widgets.png'),
              SizedBox(height: height * 0.02),
              Container(
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.grey[500]),
                child: Text(
                  "Class ImageWidget extends StatelessWidget { // Class Stuff  }",
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
              ),
              SizedBox(height: height * 0.02),
              Container(
                child: Text('Types of Widget',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
              ),
              ListTile(
                leading: MyBullet(),
                title: Text(
                  'Visible (Output and Input)',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              ListTile(
                leading: MyBullet(),
                title: Text(
                  'Invisible (Layout and Control)',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              Container(
                child: Text(
                  "Visibility is a widget that is useful to show or hide other widgets in flutter. We have to wrap the widget we want to show or hide inside the visibility widget as a child. This widget has a property called visible which controls the state (visible or invisible) of the child. Instead of hiding the child, we can also replace it with another widget. This widget gives us control over whether to maintain the space for the widget when it gets invisible.",
                  style: TextStyle(
                    fontSize: 17,
                  ),
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
                .push(MaterialPageRoute(builder: (context) => Nav()));
        },
      ),
    );
    
  }
}

class MyBullet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10,
      width: 10,
      decoration: BoxDecoration(
        color: Colors.black,
        shape: BoxShape.circle,
      ),
    );
  }
}
