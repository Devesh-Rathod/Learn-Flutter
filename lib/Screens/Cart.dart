import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:learn_flutter/Screens/quiz/quiz_screen.dart';

class Quiz  extends StatelessWidget {
  const Quiz ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Quiz App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.deepPurpleAccent,
      ),
      home: QuizScreen(),
    );
  }
}