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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20.0),
              child: TextField(
                style: TextStyle(
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  icon: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  hintText: "ناوی مامۆستاکە بنووسە",
                  hintStyle: TextStyle(color: Colors.grey),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      borderSide: BorderSide.none),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Column(
              children: [
                Wrap(
                  direction: Axis.horizontal,
                  spacing: 15,
                  runSpacing: 15,
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
    );
  }
}
