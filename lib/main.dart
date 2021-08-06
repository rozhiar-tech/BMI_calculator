import 'package:BMIcalculator/Screens/Welcome/welcome_screen.dart';
import 'package:BMIcalculator/Screens/introduction_screen.dart';
import 'package:flutter/material.dart';
import 'package:BMIcalculator/Screens/input_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:after_layout/after_layout.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Screens/profile.dart';
import 'package:flutter/services.dart';
import 'package:BMIcalculator/Screens/input_page.dart';

import 'helper/helperFunction.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(BmiCalculator());
}

class BmiCalculator extends StatefulWidget {
  @override
  State<BmiCalculator> createState() => _BmiCalculatorState();
}

class _BmiCalculatorState extends State<BmiCalculator> {
  bool isUserLoggedin = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getLoggedInState();
  }

  getLoggedInState() async {
    await HelperFunctions.getUserLoggedInSharedPreference().then((value) {
      setState(() {
        isUserLoggedin = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: isUserLoggedin != null
          ? /**/ isUserLoggedin
              ? Profile()
              : Splash()
          /**/ : Splash(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xff0a0e21),
        scaffoldBackgroundColor: Colors.white,
      ),
    );
  }
}

class Splash extends StatefulWidget {
  @override
  SplashState createState() => new SplashState();
}

class SplashState extends State<Splash> with AfterLayoutMixin<Splash> {
  Future checkFirstSeen() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool _seen = (prefs.getBool('seen') ?? false);

    if (_seen) {
      Navigator.of(context).pushReplacement(
          new MaterialPageRoute(builder: (context) => new Home()));
    } else {
      await prefs.setBool('seen', true);
      Navigator.of(context).pushReplacement(
          new MaterialPageRoute(builder: (context) => new IntroScreen()));
    }
  }

  @override
  void afterFirstLayout(BuildContext context) => checkFirstSeen();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new Text('Loading...'),
      ),
    );
  }
}

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return WelcomeScreen();
  }
}

class IntroScreen extends StatefulWidget {
  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
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
