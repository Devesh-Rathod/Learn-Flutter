import 'package:flutter/material.dart';
import 'package:learn_flutter/Screens/HomeScreen.dart';
import 'package:lottie/lottie.dart';



class Dps extends StatelessWidget {
  const Dps({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Dart Programming Syntax'),
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.indigoAccent,
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
                  child: Lottie.asset('Assets/d.json'),
                ),
              ),
              SizedBox(height: height * 0.02),
              Container(
                child: Text('What is Dart Programming ?',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Container(
                child: Text(
                  "A programming language that is easy to learn, with a familiar syntax. Productive Development. Make changes to your source code iteratively, using hot reload to instantly see the effect in the running app. Write code using a flexible type system with rich static analysis and powerful, configurable tooling. Dart is an open-source programming language which is widely used to develop the mobile application, modern web-applications, desktop application, and the Internet of Things (IoT) using by Flutter framework. It also supports a few advance concepts such as interfaces, mixins, abstract classes, refield generics, and type interface.",
                  style: TextStyle(fontSize: 17),
                ),
              ),
              SizedBox(height: height * 0.02),
              Container(
                child: Text('Data Variables',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Container(
                child: Text(
                  "Variable is used to store the value and refer the memory location in computer memory. When we create a variable, the Dart compiler allocates some space in memory. The size of the memory block of memory is depended upon the type of variable. To create a variable, we should follow certain rules. Here is an example of a creating variable and assigning value to it.",
                  style: TextStyle(fontSize: 17),
                ),
              ),
              SizedBox(height: height * 0.02),
              Container(
                child: Text('Rules To Create Variables',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              ListTile(
                leading: MyBullet(),
                title: Text('The variable cannot contain special characters such as whitespace, mathematical symbol, runes, Unicode character, and keywords.', style: TextStyle(fontSize: 17),),
              ),
              ListTile(
                leading: MyBullet(),
                title: Text('The first character of the variable should be an alphabet([A to Z],[a to z]). Digits are not allowed as the first character.', style: TextStyle(fontSize: 17),),
              ),
              ListTile(
                leading: MyBullet(),
                title: Text('Variables are case sensitive. For example, - variable age and AGE are treated differently.', style: TextStyle(fontSize: 17),),
              ),
              ListTile(
                leading: MyBullet(),
                title: Text('The special character such as #, @, ^, &, * are not allowed expect the underscore(_) and the dollar sign(dollar).', style: TextStyle(fontSize: 17),),
              ),
              ListTile(
                leading: MyBullet(),
                title: Text('The variable name should be retable to the program and readable.', style: TextStyle(fontSize: 17),),
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
