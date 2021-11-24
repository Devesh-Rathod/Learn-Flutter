import 'package:flutter/material.dart';
import 'package:learn_flutter/Screens/HomeScreen.dart';
import 'package:lottie/lottie.dart';

class StateF extends StatelessWidget {
  const StateF({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'State Management In Flutter',
            style: TextStyle(
                color: Colors.blueAccent, fontWeight: FontWeight.bold),
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
                    child: Lottie.asset('Assets/4.json'),
                  ),
                ),
                SizedBox(
                  height: height * 0.04,
                ),
                Container(
                  child: Text('Flutter - State Management',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Container(
                  child: Text(
                    "A state management can be divided into two categories based on the duration the particular state lasts in an application.",
                    style: TextStyle(fontSize: 17),
                  ),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                ListTile(
                  leading: MyBullet(),
                  title: Text(
                    'Ephemeral − Last for a few seconds like the current state of an animation or a single page like current rating of a product. Flutter supports its through StatefulWidget.',
                    style: TextStyle(fontSize: 17),
                  ),
                ),
                ListTile(
                  leading: MyBullet(),
                  title: Text(
                    'app state − Last for entire application like logged in user details, cart information, etc., Flutter supports its through scoped_model.',
                    style: TextStyle(fontSize: 17),
                  ),
                ),
                SizedBox(
                  height: height * 0.04,
                ),
                Container(
                  child: Text('Navigation and Routing',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Container(
                  child: Text(
                    "In any application, navigating from one page / screen to another defines the work flow of the application. The way that the navigation of an application is handled is called Routing. Flutter provides a basic routing class – MaterialPageRoute and two methods - Navigator.push and Navigator.pop, to define the work flow of an application.",
                    style: TextStyle(fontSize: 17),
                  ),
                ),
                ListTile(
                  leading: MyBullet(),
                  title: Text(
                    'MaterialPageRoute',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  height: 30,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.grey[500]),
                  child: Text(
                    "MaterialPageRoute(builder: (context) => Widget())",
                    style: TextStyle(
                      fontSize: 17,
                    ),
                  ),
                ),
                 ListTile(
                  leading: MyBullet(),
                  title: Text(
                    'Navigation.push',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.grey[500]),
                  child: Text(
                    "Navigator.push( context, MaterialPageRoute(builder:(context)=>Widget()),);",
                    style: TextStyle(
                      fontSize: 17,
                    ),
                  ),
                ),
                ListTile(
                  leading: MyBullet(),
                  title: Text(
                    'Navigation.pop',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  height: 30,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.grey[500]),
                  child: Text(
                    "Navigator.push(context);",
                    style: TextStyle(
                      fontSize: 17,
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Image.asset('Assets/State.png'),
              ],
            ),
          ),
        ));
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
