import 'package:flutter/material.dart';

class Reusablecard extends StatelessWidget {
  Reusablecard({@required this.color, this.cardChild, this.gesturedetector});
  final Color color;
  final Widget cardChild;
  Function gesturedetector;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: gesturedetector,
      child: Container(
        height: 400,
        child: cardChild,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: color,
        ),
      ),
    );
  }
}
