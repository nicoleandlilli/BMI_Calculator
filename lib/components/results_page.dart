import 'package:flutter/material.dart';
import 'package:flutter_demo/components/bottom_button.dart';
import 'package:flutter_demo/constants.dart';
import 'reusable_card.dart';

class ResultsPage extends StatelessWidget {

  ResultsPage({required this.interpretation, required this.bmiResult, required this.resultText});

  final String bmiResult;
  final String resultText;
  final String interpretation;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'BMI CALCULATOR',
              style: TextStyle(
                color: Color(0xFFFFFFFF),
              ),
            ),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
                child: Container(
                  padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: kTitleTextStyle,
              ),
            ),),
            Expanded(
              flex: 5,
              child: ReusableCard(
                color: kActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      resultText.toUpperCase(),
                      style: kResultTextStyle,
                    ),
                    Text(
                      bmiResult,
                      style: kBMITextStyle,
                    ),
                    Text(interpretation,style: kBodyTextStyle,
                    textAlign: TextAlign.center,),
                  ],
                ),
                onPress: () {},
              ),
            ),
            BottomButton(onTap: (){
              Navigator.pop(context);
            },
                buttonTitle: 'RE-CALCULATE',)
          ],
        ));
  }
}
