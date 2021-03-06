import 'package:flutter/material.dart';
import 'package:learn_flutter/Methods.dart';
import 'package:learn_flutter/Screens/LoginScreen.dart';
import 'package:lottie/lottie.dart';

import 'HomeScreen.dart';
String name = "Guest";
String last = "1";
class RegisterationScreen extends StatefulWidget {
  const RegisterationScreen({ Key? key }) : super(key: key);

  @override
  _RegisterationScreenState createState() => _RegisterationScreenState();
}

class _RegisterationScreenState extends State<RegisterationScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    final firstName = TextFormField(
      autofocus: false,
      controller: firstNameController,
      keyboardType: TextInputType.name,
      
      onSaved: (value){
        firstNameController.text = value!;
        
      },
      
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.verified_user),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "First Name",
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)) ,
      ),
      
    );
    final lastName = TextFormField(
      autofocus: false,
      controller: lastNameController,
      keyboardType: TextInputType.name,
      onSaved: (value){
        lastNameController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.verified_user),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Last Name",
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)) ,
      ),
    );
    final emailField = TextFormField(
      autofocus: false,
      controller: emailController,
      keyboardType: TextInputType.emailAddress,
      onSaved: (value){
        emailController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.email),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Email",
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)) ,
      ),
    );
    final passwordField = TextFormField(
      autofocus: false,
      controller: passwordController,
      obscureText: true,
      onSaved: (value){
        passwordController.text = value!;
      },
      textInputAction: TextInputAction.next,
       decoration: InputDecoration(
        prefixIcon: Icon(Icons.security),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Password",
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)) ,
      ),
    );
    final confirmPasswordField = TextFormField(
      autofocus: false,
      controller: confirmPasswordController,
      obscureText: true,
      onSaved: (value){
        confirmPasswordController.text = value!;
      },
      textInputAction: TextInputAction.done,
       decoration: InputDecoration(
        prefixIcon: Icon(Icons.security),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Confirm Password",
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)) ,
      ),
    );
    final signUpButton = Material(
      elevation: 5,
      color: Colors.indigoAccent,
      borderRadius: BorderRadius.circular(30),
      
      child: MaterialButton(
        padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        minWidth: MediaQuery.of(context).size.width,
        onPressed: (){
            if(firstNameController.text.isNotEmpty 
            && lastNameController.text.isNotEmpty
            && passwordController.text.isNotEmpty
            && confirmPasswordController.text.isNotEmpty
            ){
                setState(() {
                  isLoading = true;
                  name = firstNameController.text.toString();
                  last = lastNameController.text.toString();
                  email = emailController.text.toString();
                });
                signUp(firstNameController.text, lastNameController.text, emailController.text, passwordController.text, confirmPasswordController.text).then((user){
                    if(user != null){
                      setState(() {
                        isLoading = false;
                      });
                      Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => HomeScreen()));
                      print('SignUp Sucessfull');
                    }else{
                      Future.delayed(Duration(seconds: 4), () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => LoginScreen()));
                  });
                      print('SignUp Failed');
                    }
                });
              }else{
              print('Please enter fields ');
            }
        }, 
        child: Text('SignUp', style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
               ),
            ), 
      )
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.indigoAccent,), 
          onPressed: () {
                          Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => LoginScreen()));
            },
        )
      ),
      body: isLoading ? Center(
        child: Container(
          height: 20,
          width: 20,
          child: CircularProgressIndicator(),
        ),
      )
      : Container(
      child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(12),
            child: Form(
              child: Column(
                key: _formKey,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                   SizedBox(
                     height: 300,
                     width: 300,
                     child: Lottie.asset('Assets/Regi.json'),
                   ),
                   
                   SizedBox(height: 5,),
                   firstName,
                   
                   SizedBox(height: 20,),
                   lastName,
                   SizedBox(height: 20,),
                   emailField,
                   SizedBox(height: 20,),
                   passwordField,
                   SizedBox(height: 20,),
                   confirmPasswordField,
                   SizedBox(height: 20,),
                   signUpButton,
                ],
              )
              ),
          ),
          ),
      ),
    );
  }
}