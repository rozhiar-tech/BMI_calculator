import 'package:BMIcalculator/Screens/Welcome/welcome_screen.dart';
import 'package:BMIcalculator/Screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class Introduction extends StatefulWidget {
  @override
  _IntroductionState createState() => _IntroductionState();
}

class _IntroductionState extends State<Introduction> {
  List<PageViewModel> getpage() {
    return [
      PageViewModel(
        image: Image.asset("assets/first.png"),
        title: "BMI calculator",
        body:
            "دۆزینەوەی ئەوەی کە ئایا پێویست ئەکا کێشت دابگری یاخوود کێشت زیاد بکەی",
        footer: Text(
          "زانینی وەزنی پێویستی",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        decoration: PageDecoration(
          titleTextStyle:
              PageDecoration().titleTextStyle.copyWith(color: Colors.black),
          bodyTextStyle:
              PageDecoration().bodyTextStyle.copyWith(color: Colors.black),
        ),
      ),
      PageViewModel(
        image: Image.asset("assets/first.png"),
        title: "پلانی ڕێجیم ",
        body: "حەفتانە هەبوونی کۆرسی ڕێجیمی تازە",
        footer: Text(
          "ڕێجیم",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        decoration: PageDecoration(
          titleTextStyle:
              PageDecoration().titleTextStyle.copyWith(color: Colors.black),
          bodyTextStyle:
              PageDecoration().bodyTextStyle.copyWith(color: Colors.black),
        ),
      ),
      PageViewModel(
        image: Image.asset("assets/first.png"),
        title: "کۆرسی یاریکردن",
        body: "حەفتانە هەبوونی کۆرسی یاریکردنی تازە",
        footer: Text(
          "کۆرسی یاریکردن",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        decoration: PageDecoration(
          titleTextStyle:
              PageDecoration().titleTextStyle.copyWith(color: Colors.black),
          bodyTextStyle:
              PageDecoration().bodyTextStyle.copyWith(color: Colors.black),
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        globalBackgroundColor: Colors.white,
        pages: getpage(),
        done: Text(
          "Done",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        showNextButton: false,
        showDoneButton: true,
        showSkipButton: false,
        onDone: () {
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) {
            return WelcomeScreen();
          }));
        },
      ),
    );
  }
}
