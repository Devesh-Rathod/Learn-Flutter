import 'package:flutter/material.dart';
import 'package:learn_flutter/Methods.dart';
import 'package:lottie/lottie.dart';
import 'HomeScreen.dart';
import 'RegistrationScreen.dart';
String email = "guest@gmail.com";
class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // Form Key
  final _formKey = GlobalKey<FormState>();

  // Text Editing Controllers (Email and password)
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool isLoading = false;
  // Firebase Authentication Instance
  
  @override
  Widget build(BuildContext context) {
    // Email Field
    final emailField = TextFormField(
      autofocus: false,
      controller: emailController,
      keyboardType: TextInputType.emailAddress,
      validator: (value) {
        // If Empty
        if (value!.isEmpty) {
          return ("Please enter valid email id");
        }
        // Regexpression for valid email
        if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]").hasMatch(value)) {
          return ("Please Enter a valid email");
        }
        return null;
      },
      onSaved: (value) {
        emailController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.email),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Email",
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );
    final passwordField = TextFormField(
      autofocus: false,
      controller: passwordController,
      obscureText: true,
      validator: (value) {
        RegExp regex = new RegExp(r'^.{6,}$');
        if (value!.isEmpty) {
          return ("Password is required for login");
        }
        if (!regex.hasMatch(value)) {
          return ("Enter Valid Password");
        }
      },
      onSaved: (value) {
        passwordController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.security),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Password",
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );
    final loginButton = Material(
        elevation: 5,
        color: Colors.indigoAccent,
        borderRadius: BorderRadius.circular(30),
        child: MaterialButton(
          padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          minWidth: MediaQuery.of(context).size.width,
          child: Text(
            'Login',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          onPressed: ()  {
            if (emailController.text.isNotEmpty &&
                emailController.text.isNotEmpty) {
              setState(() {
                email = emailController.text.toString();
                isLoading = true;
              });
              logIn(emailController.text, passwordController.text).then((user) {
                if (user != null) {
                  print('Logged In');
                  isLoading = false;
                  
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => HomeScreen()));
                } else {
                 
                  Future.delayed(Duration(seconds: 4), () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => RegisterationScreen()));
                  });

                  print('Login failed');
                }
              });
            } else {
              print('Please fill form correctly');
            }
          },
        ));
    return Scaffold(
      body: isLoading
          ? Center(
              child: Container(
              height: 20,
              width: 20,
              child: CircularProgressIndicator(),
            ))
          : Container(
              child: SingleChildScrollView(
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Form(
                      child: Column(
                        key: _formKey,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 150,
                          ),
                          SizedBox(
                            height: 300,
                            width: 300,
                            child: Lottie.asset('Assets/Auth.json'),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          emailField,
                          SizedBox(
                            height: 20,
                          ),
                          passwordField,
                          SizedBox(
                            height: 20,
                          ),
                          loginButton,
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Don't have an account ? "),
                                GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  RegisterationScreen()));
                                    },
                                    child: Text('SignUp',
                                        style: TextStyle(
                                            color: Colors.indigoAccent,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14)))
                              ])
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
    );
  }
}
