import 'package:flutter/material.dart';

const labelTextstyle =
    TextStyle(fontSize: 19.0, fontWeight: FontWeight.bold, color: Colors.black);

class ChildCard extends StatelessWidget {
  ChildCard({@required this.icon, @required this.text});
  final Icon icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        icon,
        SizedBox(height: 4),
        Text("$text", style: labelTextstyle)
      ],
    );
  }
}
