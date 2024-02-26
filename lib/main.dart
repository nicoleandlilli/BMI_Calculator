import 'package:flutter/material.dart';
import 'package:flutter_demo/screens/Screen2.dart';
import 'screens/Screen1.dart';
import 'components/input_page.dart';

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
      home: InputPage(),
      // home: Screen1(),

      // initialRoute: '/first',
      routes: {
        // '/': (context) => InputPage(),
        '/first': (context) => Screen1(),
        '/second': (context) => Screen2(),
      },
    );
  }
}





