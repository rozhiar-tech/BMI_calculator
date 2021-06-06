import 'package:BMIcalculator/components/constants.dart';
import 'package:BMIcalculator/Screens/input_page.dart';
import 'package:flutter/material.dart';
import 'package:BMIcalculator/components/reusablecard.dart';
import 'input_page.dart';

class ResultPage extends StatelessWidget {
  ResultPage({this.bmiResult, this.resultText, this.Interpretation});

  final String bmiResult;
  final String resultText;
  final String Interpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text('Result'))),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Reusablecard(
              color: kCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resultText.toUpperCase(),
                    style: kResultText,
                  ),
                  Text(
                    bmiResult,
                    style: kBmiTextStyle,
                  ),
                  Text(
                    Interpretation,
                    textAlign: TextAlign.center,
                    style: kBmiTextStyle2,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            name: 'Re Calculate',
            onTab: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => InputPage(),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
