import 'package:flutter/material.dart';
import 'package:learn_flutter/Screens/Cart.dart';
import 'package:learn_flutter/Screens/Home.dart';
import 'package:learn_flutter/Screens/UserAccount.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedItem = 0;
  var _pages = [homePage(), Quiz(), userAccount()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: _pages[_selectedItem],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            backgroundColor: Colors.indigo,
            icon: Icon(Icons.home),
            label: 'Home',
            
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.quiz),
             backgroundColor: Colors.indigo,
            label: 'Quiz',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.supervised_user_circle),
             backgroundColor: Colors.indigo,
            label: 'User Account',
          ),
        ],
        currentIndex: _selectedItem,
        onTap: (setValue){
          setState(() {
            _selectedItem = setValue;
          });
        },
      ),
    );
  }
}
