import 'package:flutter/material.dart';
import 'icon_content.dart';
import 'reusable_card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


const bottomContainerHeight = 80.0;
const bottomContainerColor = Color(0xFFEB1555);
const activeCardColor = Color(0xFF1D1E33);
const inactiveCardColor = Color(0xFF111328);

enum Gender{
  male,
  female,
}

class InputPage extends StatefulWidget{

  @override
  _InputPageState createState() => _InputPageState();

}

class _InputPageState extends State<InputPage>{

  Color maleCardColor = inactiveCardColor;
  Color femaleCardColor = inactiveCardColor;

  //1 = male, 2 = female
  void updateColor(Gender selectedGender){
    //male card pressed
    if(selectedGender == Gender.male){
      if(maleCardColor == inactiveCardColor){
        maleCardColor = activeCardColor;
        femaleCardColor = inactiveCardColor;
      }else{
        maleCardColor = inactiveCardColor;
      }
    }else if(selectedGender == Gender.female){
      if(femaleCardColor == inactiveCardColor){
        femaleCardColor = activeCardColor;
        maleCardColor = inactiveCardColor;
      }else{
        femaleCardColor = inactiveCardColor;
      }
    }
  }

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
              Expanded(child:GestureDetector(
                onTap: (){
                  setState(() {
                    updateColor(Gender.male);
                  });
                },
                child:  ReusableCard(
                  color: maleCardColor,
                  cardChild: IconContent(icon: FontAwesomeIcons.mars,label: "MALE",),
                ),
              ),
              ),
              Expanded(child: GestureDetector(
                onTap: (){
                  setState(() {
                    updateColor(Gender.female);
                  });
                },
                child: ReusableCard(
                  color: femaleCardColor,
                  cardChild: IconContent(icon: FontAwesomeIcons.venus,label: "FEMALE",),
                ),
              ),
              ),
            ],
          )),
          Expanded(child: ReusableCard(color: activeCardColor),),
          Expanded(child: Row(
            children: [
              Expanded(child: ReusableCard(color: activeCardColor),),
              Expanded(child: ReusableCard(color: activeCardColor),),
            ],
          )),
          Container(
            color: bottomContainerColor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
          )
        ],
      )

    );
  }


}



