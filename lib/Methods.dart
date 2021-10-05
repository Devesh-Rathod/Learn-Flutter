import 'package:firebase_auth/firebase_auth.dart';
Future <User?> signUp(String firstName, String lastName, String email, String password, String confirmPassword) async{
   FirebaseAuth _auth = FirebaseAuth.instance;
   try{
     User? user = (await _auth.createUserWithEmailAndPassword(email: email, password: password)).user;
     if(user != null){
       print("SignUp Sucessfull");

       return user;
     }
     else{
       print('SignUp Failed');
       return user;
     }
   }
   catch(e){
      print(e);
      return null;
   }
}
Future logOut (String email, String password) async{
  FirebaseAuth _auth = FirebaseAuth.instance;
  try{
    await _auth.signOut();

  } catch(e){
     print("Error");
  }
}
Future <User?> logIn(String email, String password) async{
   FirebaseAuth _auth = FirebaseAuth.instance;
   try{
     User? user = (await _auth.signInWithEmailAndPassword(email: email, password: password)).user;
     if(user != null){
       print('Login Sucessfull');
       return user;
     }else{
       print('Login Failed');
       return user;
     }
   }catch(e){
     print(e);
     return null;
   }
}