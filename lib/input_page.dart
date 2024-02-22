import 'package:flutter/material.dart';

class InputPage extends StatefulWidget{


  @override
  _InputPageState createState() => _InputPageState();

}

class _InputPageState extends State<InputPage>{

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
              Expanded(child: ReusableCard(color: Color(0xFF1D1E33)),),
              Expanded(child: ReusableCard(color: Color(0xFF1D1E33)),),
            ],
          )),
          Expanded(child: ReusableCard(color: Color(0xFF1D1E33)),),
          Expanded(child: Row(
            children: [
              Expanded(child: ReusableCard(color: Color(0xFF1D1E33)),),
              Expanded(child: ReusableCard(color: Color(0xFF1D1E33)),),
            ],
          )),
        ],
      )

    );
  }


}

class ReusableCard extends StatelessWidget {

  Color color;

  ReusableCard({required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Color(0xFF1D1E33),
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10.0)
      ),
    );
  }
}
