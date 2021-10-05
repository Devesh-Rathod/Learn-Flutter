import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'LoginScreen.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({ Key? key }) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    Future.delayed(Duration(seconds: 4),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginScreen()));
    }
    );
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             SizedBox(
               height: 300,
               width: 300,
               child: Lottie.asset('Assets/SplashBack.json'),
             ),
             SizedBox(height: 25,),
             Text('Welcome Geek!',
             style: TextStyle(
               fontWeight: FontWeight.bold,
               fontSize: 24,
               ),
             ),
          ],
        ),
      ),
    );
  }
}