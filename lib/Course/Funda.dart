import 'package:flutter/material.dart';
import 'package:learn_flutter/Screens/HomeScreen.dart';
import 'package:lottie/lottie.dart';
class Funda extends StatelessWidget {
  const Funda({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
          title: Text(
            'Flutter Widgets And Fundamental',
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
            child: Column(children: [
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
            ],),
          ),
          ),
    );
  }
}