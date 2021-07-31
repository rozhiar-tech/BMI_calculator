import 'package:BMIcalculator/Screens/profile.dart';
import 'package:BMIcalculator/helper/helperFunction.dart';
import 'package:BMIcalculator/services/database.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:BMIcalculator/Screens/Login/components/background.dart';
import 'package:BMIcalculator/Screens/Signup/signup_screen.dart';
import 'package:BMIcalculator/components/already_have_an_account_acheck.dart';
import 'package:BMIcalculator/components/rounded_button.dart';
import 'package:BMIcalculator/components/rounded_input_field.dart';
import 'package:BMIcalculator/components/rounded_password_field.dart';
import 'package:flutter_svg/svg.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';

class Body extends StatefulWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  DatabaseMethods databaseMethods = DatabaseMethods();
  bool showSpinner = false;
  final _auth = FirebaseAuth.instance;
  String email;
  String password;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              " ڕاهێنەر",
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
            ),
            SizedBox(height: size.height * 0.03),
            Image(
              image: AssetImage("assets/hey.jpg"),
              height: size.height * 0.35,
            ),
            SizedBox(height: size.height * 0.03),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {
                email = value;
              },
            ),
            RoundedPasswordField(
              onChanged: (value) {
                password = value;
              },
            ),
            RoundedButton(
              text: "LOGIN",
              press: () async {
                setState(() {
                  showSpinner = true;
                });
                try {
                  final newUser = await _auth
                      .signInWithEmailAndPassword(
                          email: email, password: password)
                      .then((value) async {
                    if (value != null) {
                      QuerySnapshot userinfosnapshot =
                          await databaseMethods.getUserInfo(email);
                      HelperFunctions.saveUserLoggedInSharedPreference(true);
                      HelperFunctions.saveUserNameSharedPreference(
                          userinfosnapshot.docs[0].get('name'));
                      HelperFunctions.saveUserEmailSharedPreference(
                          userinfosnapshot.docs[0].get('name'));
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) {
                        return Profile();
                      }));
                    }
                    setState(() {
                      showSpinner = false;
                    });
                  });
                } catch (e) {
                  print(e);
                }
              },
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
