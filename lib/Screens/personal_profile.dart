import 'package:BMIcalculator/Screens/profile.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'input_page.dart';

class PersonalProfile extends StatefulWidget {
  @override
  _PersonalProfileState createState() => _PersonalProfileState();
}

class _PersonalProfileState extends State<PersonalProfile> {
  int _selectedIndex = 2;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      switch (index) {
        case 0:
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) {
            return InputPage();
          }));
          break;
        case 1:
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) {
            return Profile();
          }));
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: CurvedNavigationBar(
        buttonBackgroundColor: Colors.black,
        backgroundColor: Colors.white,
        items: [
          Icon(
            Icons.calculate,
            size: 22,
            color: Colors.grey,
          ),
          Icon(
            Icons.home,
            size: 22,
            color: Colors.grey,
          ),
          Icon(
            Icons.account_box,
            size: 22,
            color: Colors.grey,
          )
        ],
        height: 50,
        animationDuration: Duration(milliseconds: 200),
        animationCurve: Curves.bounceInOut,
        index: _selectedIndex,
        onTap: (index) {
          _onItemTapped(index);
        },
      ),
      body: Container(
        child: Center(
            child: Text(
          "بەمزوانە بەردەست دەبێت",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            color: Colors.black,
          ),
        )),
      ),
    );
  }
}
