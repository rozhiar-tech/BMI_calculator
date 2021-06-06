import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:BMIcalculator/components/icon_content.dart';
import 'package:BMIcalculator/components/constants.dart';
import 'package:BMIcalculator/components/reusablecard.dart';
import 'results.dart';
import 'package:BMIcalculator/calculator_brain.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;
  int height = 180;
  int weight = 30;
  int Age = 15;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("BMI calculator")),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                    child: Reusablecard(
                  gesturedetector: () {
                    setState(() {
                      selectedGender = Gender.male;
                    });
                  },
                  color: selectedGender == Gender.male
                      ? kInactivecoustomecolor
                      : kCardColor,
                  cardChild: ChildCard(
                    icon: Icon(
                      FontAwesomeIcons.mars,
                      size: 80,
                    ),
                    text: 'MALE',
                  ),
                )),
                Expanded(
                    child: Reusablecard(
                  gesturedetector: () {
                    setState(() {
                      selectedGender = Gender.female;
                    });
                  },
                  color: selectedGender == Gender.female
                      ? kInactivecoustomecolor
                      : kCardColor,
                  cardChild: ChildCard(
                    icon: Icon(
                      FontAwesomeIcons.venus,
                      size: 80,
                    ),
                    text: 'FEMALE',
                  ),
                )),
              ],
            ),
          ),
          Expanded(
              child: Reusablecard(
            cardChild: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Height',
                  style: kTextStyle,
                ),
                Row(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        height.toString(),
                        style: kNumberStyle,
                      ),
                      Text(
                        'cm',
                      ),
                    ]),
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                      thumbColor: Color(0xffeb1555),
                      activeTrackColor: Colors.white,
                      overlayColor: Color(0x29eb1555),
                      thumbShape: RoundSliderThumbShape(
                        enabledThumbRadius: 15,
                      ),
                      overlayShape: RoundSliderOverlayShape(
                        overlayRadius: 30,
                      )),
                  child: Slider(
                      value: height.toDouble(),
                      min: 120,
                      max: 220,
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.round();
                        });
                      },
                      inactiveColor: Color(0xff8d8e98)),
                ),
              ],
            ),
            color: kInactivecoustomecolor,
          )),
          Expanded(
            child: Row(children: [
              Expanded(
                child: Reusablecard(
                  color: kCardColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text('Weight', style: kTextStyle),
                            SizedBox(width: 4),
                            Text('kg', style: TextStyle(fontSize: 13)),
                          ]),
                      Text(
                        weight.toString(),
                        style: kNumberStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RoundIconButton(
                            changeState: () {
                              setState(
                                () {
                                  weight = weight - 1;
                                },
                              );
                            },
                            icon: FontAwesomeIcons.minus,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          RoundIconButton(
                            changeState: () {
                              setState(() {
                                weight = weight + 1;
                              });
                            },
                            icon: FontAwesomeIcons.plus,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Reusablecard(
                    color: kCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Age', style: kTextStyle),
                        Text(
                          Age.toString(),
                          style: kNumberStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              changeState: () {
                                setState(() {
                                  Age--;
                                });
                              },
                              icon: FontAwesomeIcons.minus,
                            ),
                            SizedBox(width: 10),
                            RoundIconButton(
                              changeState: () {
                                setState(() {
                                  Age++;
                                });
                              },
                              icon: FontAwesomeIcons.plus,
                            ),
                          ],
                        ),
                      ],
                    )),
              ),
            ]),
          ),
          BottomButton(
            name: 'Calculate BMI',
            onTab: () {
              CalculatorBrain calc =
                  CalculatorBrain(height: height, weight: weight);

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultPage(
                    bmiResult: calc.calculateBMI(),
                    resultText: calc.getResult(),
                    Interpretation: calc.getInterpreter(),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class BottomButton extends StatelessWidget {
  BottomButton({this.name, this.onTab});
  final name;
  final Function onTab;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTab,
      child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(10), topLeft: Radius.circular(10)),
            color: Color(0xffeb1555),
          ),
          child: Center(
              child: Text(name,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),
          margin: EdgeInsets.only(top: 10),
          width: double.infinity,
          height: kBottomContainer),
    );
  }
}

class RoundIconButton extends StatelessWidget {
  RoundIconButton({this.icon, this.changeState});
  final IconData icon;
  Function changeState;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: changeState,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xff4c4f5e),
      elevation: 6.0,
    );
  }
}
