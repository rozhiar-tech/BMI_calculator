import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController SearchTextEditingController =
      new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFe9e9e9),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: TextField(
            controller: SearchTextEditingController,
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
      ),
    );
  }
}
