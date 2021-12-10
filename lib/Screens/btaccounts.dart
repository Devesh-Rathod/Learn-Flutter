//home/mainpage for accounts section

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:learn_flutter/Screens/LoginScreen.dart';

import 'RegistrationScreen.dart';


class Accounts extends StatefulWidget {
  @override
  _AccountsState createState() => _AccountsState();
}

class _AccountsState extends State<Accounts> {
  @override
  // void initState() {
  //   // TODO: implement initState
  //   getCurrentUserIdFromSP();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(0, 0, 0, 1),
        bottomOpacity: 2.22,
        title: Container(
          alignment: Alignment.center,
          child: Text(
            'Profile',
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w500,
              fontSize: 18,
              color: Color.fromRGBO(255, 255, 255, 1),
            ),
            textAlign: TextAlign.center,
          ),
        ),
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.036,
                        left: MediaQuery.of(context).size.height * 0.014),
                    child: CircleAvatar(
                      radius: 41,
                      backgroundImage: AssetImage(
                        'Assets/profileji.png',
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                                left: MediaQuery.of(context).size.height * 0.020,
                                top: MediaQuery.of(context).size.height * 0.032),
                            child: Text(
                              name + " " + last,
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                fontSize:
                                    18 * MediaQuery.textScaleFactorOf(context),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                left: MediaQuery.of(context).size.height * 0.121,
                                top: MediaQuery.of(context).size.height * 0.032),
                            child: FlatButton(
                              onPressed: () {
                                // Navigator.of(context).push(MaterialPageRoute(
                                //     builder: (context) => EditProfile()));
                              },
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.edit,
                                    size: 18 *
                                        MediaQuery.textScaleFactorOf(context),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: MediaQuery.of(context).size.height *
                                            0.006),
                                    child: Text(
                                      'Edit',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14 *
                                            MediaQuery.textScaleFactorOf(context),
                                        color: Color.fromRGBO(91, 91, 91, 1),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.height * 0.020,
                            top: MediaQuery.of(context).size.height * 0.001),
                        child: Text(
                          // 'guest@gmail.com',
                          email,
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            fontSize: 14 * MediaQuery.textScaleFactorOf(context),
                            color: Color.fromRGBO(149, 149, 149, 1),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.height * 0.020,
                            top: MediaQuery.of(context).size.height * 0.003),
                        child: Text(
                          '+9195xxxxxxxx',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            fontSize: 14 * MediaQuery.textScaleFactorOf(context),
                            color: Color.fromRGBO(149, 149, 149, 1),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
      
            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.027),
              child: Container(
                height: 9 * MediaQuery.textScaleFactorOf(context),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(230, 230, 230, 1),
                ),
              ),
            ),
      
            //notification
            InkWell(
              onTap: () {
                // Navigator.of(context).push(
                //     MaterialPageRoute(builder: (context) => NotificationHome()));
              },
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.height * 0.023,
                        top: MediaQuery.of(context).size.height * 0.0175),
                    child: Container(
                      height: 19.5 * MediaQuery.textScaleFactorOf(context),
                      width: 16 * MediaQuery.textScaleFactorOf(context),
                      child: Icon(
                        Icons.notifications,
                        color: Color.fromRGBO(91, 91, 91, 1),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.height * 0.027,
                        top: MediaQuery.of(context).size.height * 0.015),
                    child: Text(
                      'Notification',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        fontSize: 16 * MediaQuery.textScaleFactorOf(context),
                        color: Color.fromRGBO(0, 0, 0, 1),
                      ),
                    ),
                  ),
                ],
              ),
            ),
      
            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.011),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Color.fromRGBO(230, 230, 230, 1), width: 0.5),
                ),
              ),
            ),
      
            InkWell(
              onTap: () {
                // Navigator.of(context).push(
                //     MaterialPageRoute(builder: (context) => HomeMyCourses()));
              },
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.height * 0.023,
                        top: MediaQuery.of(context).size.height * 0.012),
                    child: Container(
                      height: 19.5 * MediaQuery.textScaleFactorOf(context),
                      width: 16 * MediaQuery.textScaleFactorOf(context),
                      child: Icon(
                        Icons.shopping_bag,
                        color: Color.fromRGBO(91, 91, 91, 1),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.height * 0.027,
                        top: MediaQuery.of(context).size.height * 0.012),
                    child: Text(
                      'My Courses',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        fontSize: 16 * MediaQuery.textScaleFactorOf(context),
                        color: Color.fromRGBO(0, 0, 0, 1),
                      ),
                    ),
                  ),
                ],
              ),
            ),
      
            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.011),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Color.fromRGBO(230, 230, 230, 1), width: 0.5),
                ),
              ),
            ),
      
            InkWell(
              onTap: () {
                // Navigator.of(context)
                //     .push(MaterialPageRoute(builder: (context) => HomeHelp()));
              },
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.height * 0.023,
                        top: MediaQuery.of(context).size.height * 0.012),
                    child: Container(
                      height: 19.5 * MediaQuery.textScaleFactorOf(context),
                      width: 16 * MediaQuery.textScaleFactorOf(context),
                      child: Icon(
                        Icons.help,
                        color: Color.fromRGBO(91, 91, 91, 1),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.height * 0.027,
                        top: MediaQuery.of(context).size.height * 0.012),
                    child: Text(
                      'Help',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        fontSize: 16 * MediaQuery.textScaleFactorOf(context),
                        color: Color.fromRGBO(0, 0, 0, 1),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.011),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Color.fromRGBO(230, 230, 230, 1), width: 0.5),
                ),
              ),
            ),
      
            InkWell(
              onTap: () {
                // Navigator.of(context).push(
                //     MaterialPageRoute(builder: (context) => HomeDiscoverLive()));
              },
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.height * 0.023,
                        top: MediaQuery.of(context).size.height * 0.012),
                    child: Container(
                      height: 19.5 * MediaQuery.textScaleFactorOf(context),
                      width: 16 * MediaQuery.textScaleFactorOf(context),
                      child: Icon(
                        Icons.share,
                        color: Color.fromRGBO(91, 91, 91, 1),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.height * 0.027,
                        top: MediaQuery.of(context).size.height * 0.012),
                    child: Text(
                      'Share Oyebusy app',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        fontSize: 16 * MediaQuery.textScaleFactorOf(context),
                        color: Color.fromRGBO(0, 0, 0, 1),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.011),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Color.fromRGBO(230, 230, 230, 1), width: 0.5),
                ),
              ),
            ),
      
            InkWell(
              onTap: () {
                // Navigator.of(context).push(
                //     MaterialPageRoute(builder: (context) => ReferAndEarnHome()));
              },
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.height * 0.023,
                        top: MediaQuery.of(context).size.height * 0.012),
                    child: Container(
                      height: 19.5 * MediaQuery.textScaleFactorOf(context),
                      width: 16 * MediaQuery.textScaleFactorOf(context),
                      child: Icon(
                        Icons.people,
                        color: Color.fromRGBO(91, 91, 91, 1),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.height * 0.027,
                        top: MediaQuery.of(context).size.height * 0.012),
                    child: Text(
                      'Refer & Earn',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        fontSize: 16 * MediaQuery.textScaleFactorOf(context),
                        color: Color.fromRGBO(0, 0, 0, 1),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.011),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Color.fromRGBO(230, 230, 230, 1), width: 0.5),
                ),
              ),
            ),
      
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.height * 0.023,
                      top: MediaQuery.of(context).size.height * 0.012),
                  child: Container(
                    height: 19.5 * MediaQuery.textScaleFactorOf(context),
                    width: 16 * MediaQuery.textScaleFactorOf(context),
                    child: Icon(
                      Icons.star_rate,
                      color: Color.fromRGBO(91, 91, 91, 1),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.height * 0.027,
                      top: MediaQuery.of(context).size.height * 0.012),
                  child: Text(
                    'Rate us',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      fontSize: 16 * MediaQuery.textScaleFactorOf(context),
                      color: Color.fromRGBO(0, 0, 0, 1),
                    ),
                  ),
                ),
              ],
            ),
      
            Padding(
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).size.height * 0.023,
                  top: MediaQuery.of(context).size.height * 0.210),
              child: FlatButton(
                child: Text(
                  'Logout',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    fontSize: 14 * MediaQuery.textScaleFactorOf(context),
                    color: Color.fromRGBO(255, 0, 61, 1),
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoginScreen()));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
