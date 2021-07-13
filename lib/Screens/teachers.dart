import 'package:BMIcalculator/Screens/SearchScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class Teacher_Screen extends StatefulWidget {
  @override
  _Teacher_ScreenState createState() => _Teacher_ScreenState();
}

class _Teacher_ScreenState extends State<Teacher_Screen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color(0xFFe9e9e9),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.search),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return SearchScreen();
          }));
        },
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Wrap(
                    direction: Axis.horizontal,
                    spacing: 20,
                    runSpacing: 20,
                    children: [
                      Container(
                        width: width * 0.40,
                        height: height * 0.20,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage('assets/trainer.png'),
                          ),
                        ),
                      ),
                      Container(
                        width: width * 0.40,
                        height: height * 0.20,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage('assets/trainer.png'),
                          ),
                        ),
                      ),
                      Container(
                        width: width * 0.40,
                        height: height * 0.20,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage('assets/trainer.png'),
                          ),
                        ),
                      ),
                      Container(
                        width: width * 0.40,
                        height: height * 0.20,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage('assets/trainer.png'),
                          ),
                        ),
                      ),
                      Container(
                        width: width * 0.40,
                        height: height * 0.20,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage('assets/trainer.png'),
                          ),
                        ),
                      ),
                      Container(
                        width: width * 0.40,
                        height: height * 0.20,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage('assets/trainer.png'),
                          ),
                        ),
                      ),
                      Container(
                        width: width * 0.40,
                        height: height * 0.20,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage('assets/trainer.png'),
                          ),
                        ),
                      ),
                      Container(
                        width: width * 0.40,
                        height: height * 0.20,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage('assets/trainer.png'),
                          ),
                        ),
                      ),
                      Container(
                        width: width * 0.40,
                        height: height * 0.20,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage('assets/trainer.png'),
                          ),
                        ),
                      ),
                      Container(
                        width: width * 0.40,
                        height: height * 0.20,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage('assets/trainer.png'),
                          ),
                        ),
                      ),
                      Container(
                        width: width * 0.40,
                        height: height * 0.20,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage('assets/trainer.png'),
                          ),
                        ),
                      ),
                      Container(
                        width: width * 0.40,
                        height: height * 0.20,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage('assets/trainer.png'),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
