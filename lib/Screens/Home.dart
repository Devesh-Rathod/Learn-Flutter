import 'package:flutter/material.dart';

class homePage extends StatelessWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 50,
        ),
        Card(
          elevation: 8,
          color: Colors.indigoAccent,
          child: Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              
            ),
            height: 200,
            width: double.infinity,
          ),
        ),
        Card(
          elevation: 8,
          color: Colors.indigoAccent,
          
          child: Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              
            ),
            height: 200,
            width: double.infinity,
          ),
        ),
         Card(
          elevation: 8,
          color: Colors.indigoAccent,
          child: Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              
            ),
            height: 200,
            width: double.infinity,
          ),
        ),
                Card(
          elevation: 8,
          color: Colors.indigoAccent,
          child: Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              
            ),
            height: 200,
            width: double.infinity,
          ),
        ),
      ],
       

    ),

    )
    );
  }
}
