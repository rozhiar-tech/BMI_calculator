import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});
  final int height;
  final int weight;

  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return "Overweight";
    } else if (_bmi > 18.5) {
      return "Normal";
    } else {
      return "UnderWeight";
    }
  }

  String getInterpreter() {
    if (_bmi >= 25) {
      return "You Have higher than normal ";
    } else if (_bmi > 18.5) {
      return "you have a Normal body weight good job";
    } else {
      return "UnderWeight";
    }
  }
}
