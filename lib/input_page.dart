import 'package:flutter/material.dart';
import 'icon_content.dart';
import 'reusable_card.dart';
import 'constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';




enum Gender{
  male,
  female,
}

class InputPage extends StatefulWidget{

  @override
  _InputPageState createState() => _InputPageState();

}

class _InputPageState extends State<InputPage>{

  Gender selectedGender = Gender.female;


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
          )
      ),
      body: Column(
        children:<Widget> [
          Expanded(child: Row(
            children: <Widget>[
              Expanded(child: ReusableCard(
                onPress: (){
                  setState(() {
                    selectedGender = Gender.male;
                  });
                },
                color: selectedGender == Gender.male ? kActiveCardColor : kInactiveCardColor,
                cardChild: IconContent(icon: FontAwesomeIcons.mars,label: "MALE",),
              ),
              ),
              Expanded(child: ReusableCard(
                onPress: (){
                  setState(() {
                    selectedGender = Gender.female;
                  });
                },
                color: selectedGender == Gender.female ? kActiveCardColor : kInactiveCardColor,
                cardChild: IconContent(icon: FontAwesomeIcons.venus,label: "FEMALE",),
              ),
              ),
            ],
          )),
          Expanded(child: ReusableCard(
              onPress: (){
                setState(() {
                  selectedGender = Gender.male;
                });
              },
              color: kActiveCardColor),),
          Expanded(child: Row(
            children: [
              Expanded(child: ReusableCard(
                  onPress: (){
                    setState(() {
                      selectedGender = Gender.male;
                    });
                  },
                  color: kActiveCardColor),),
              Expanded(child: ReusableCard(
                  onPress: (){
                    setState(() {
                      selectedGender = Gender.male;
                    });
                  },
                  color: kActiveCardColor),),
            ],
          )),
          Container(
            color: kBottomContainerColor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: kBottomContainerHeight,
          )
        ],
      )

    );
  }


}



