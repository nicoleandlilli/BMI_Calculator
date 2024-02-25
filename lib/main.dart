import 'package:flutter/material.dart';
import 'Screen1.dart';
import 'input_page.dart';

void main() => runApp( BMICalculator());

class BMICalculator extends StatelessWidget{
  const BMICalculator({super.key});


  @override
  Widget build(BuildContext context) {
    return  MaterialApp(

      theme: ThemeData.dark().copyWith(
          floatingActionButtonTheme: FloatingActionButtonThemeData(
            backgroundColor: Colors.purple,
            foregroundColor: Colors.white,
          ),
      ),
      // home: InputPage(),
      home: Screen1(),
    );
  }
}





