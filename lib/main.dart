import 'package:BMIcalculator/Screens/Welcome/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:BMIcalculator/Screens/input_page.dart';
import 'package:firebase_core/firebase_core.dart';

import 'Screens/profile.dart';
import 'package:flutter/services.dart';
import 'package:BMIcalculator/Screens/input_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(BmiCalculator());
}

class BmiCalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WelcomeScreen(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xff0a0e21),
        scaffoldBackgroundColor: Colors.white,
      ),
    );
  }
}
