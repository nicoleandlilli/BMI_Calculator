import 'package:flutter/material.dart';
import 'package:flutter_demo/calculator_brain.dart';
import 'package:flutter_demo/components/results_page.dart';
import 'package:flutter_demo/components/round_icon_button.dart';
import 'bottom_button.dart';
import 'icon_content.dart';
import 'reusable_card.dart';
import '../constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender = Gender.female;
  int height = 180;
  int weight = 60;
  int age = 20;
  MaterialColor color = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF0A0E21),
        appBar: AppBar(
            backgroundColor: Color(0xFF0A0E21),
            title: Center(
              child: Text(
                'BMI CALCULATOR',
                style: TextStyle(
                  color: Color(0xFFFFFFFF),
                ),
              ),
    ),),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    color: selectedGender == Gender.male
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.mars,
                      label: "MALE",
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    color: selectedGender == Gender.female
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.venus,
                      label: "FEMALE",
                    ),
                  ),
                ),
              ],
            )),
            Expanded(
              child: ReusableCard(
                onPress: () {
                  setState(() {
                  });
                },
                color: kActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('HEIGHT',
                    style: kLabelTextStyle,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: <Widget>[
                        Text(
                          height.toString(),
                          style: kNumberTextStyle,
                          ),
                        Text(
                          'cm',
                          style: kLabelTextStyle,
                        ),
                      ],
                    ),
                    SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          activeTrackColor: Colors.white,
                          inactiveTrackColor: Color(0xFF8D8E98),
                          thumbColor: Color(0xFFEB1555),
                          overlayColor: Color(0x29EB1555),
                          thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                          overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
                        ),
                        child: Slider(value: height.toDouble(),
                            min: 120.0,
                            max: 220.0,
                            // activeColor: Colors.yellow,
                            // inactiveColor: Colors.blue,
                            onChanged: (double newValue){
                              setState(() {
                                color = Colors.yellow;
                                height = newValue.round();
                              });
                            }
                        ),
                    ),

                  ],
                ),
              ),
            ),
            Expanded(
                child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                      onPress: () {
                        setState(() {
                        });
                      },
                      color: kActiveCardColor,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('WEIGHT',
                          style: kLabelTextStyle,),
                          Text(weight.toString(),
                          style: kNumberTextStyle,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                            // FloatingActionButton(onPressed: null,
                            //   backgroundColor: Color(0xFF4C4F5E),
                            //   child: Icon(Icons.add,color: Colors.white,),),
                              RoundIconButton(
                                icon: FontAwesomeIcons.minus,
                                onPressed: (){
                                  setState(() {
                                    weight--;
                                  });
                                },
                              ),
                            SizedBox(width: 10.0,),
                            // FloatingActionButton(onPressed: null,
                            //   backgroundColor: Color(0xFF4C4F5E),
                            //   child: Icon(Icons.add,color: Colors.white,),),
                              RoundIconButton(icon: FontAwesomeIcons.plus,
                              onPressed: (){
                                setState(() {
                                  weight++;
                                });
                              },),
                          ],)
                        ],
                      ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('AGE',
                          style: kLabelTextStyle,
                        ),
                        Text(age.toString(), style: kNumberTextStyle,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundIconButton(icon: FontAwesomeIcons.minus,
                                onPressed:(){
                                  setState(() {
                                    age--;
                                  });
                                }),
                            SizedBox(width: 10.0,),
                            RoundIconButton(icon: FontAwesomeIcons.plus,
                                onPressed:(){
                                  setState(() {
                                    age++;
                                  });
                                }),
                          ],
                        ),
                      ],
                    ),
                    onPress: (){setState(() { });},
                    color: kActiveCardColor),
                ),
              ],
            )),
            BottomButton(buttonTitle: 'CALCULATE',
              onTap: (){
              CalculatorBrain calc =  CalculatorBrain(height: height, weight: weight);

              Navigator.push(context,
                  MaterialPageRoute(
                      builder: (context) => ResultsPage(
                        interpretation: calc.getInterpretation(),
                        bmiResult: calc.calculateBMI(),
                        resultText: calc.getResult(),

                      )));
            },),
          ],
        ));
  }
}




