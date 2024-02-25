import 'package:flutter/material.dart';
import 'Screen2.dart';

class Screen1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Screen 1'),
      ),
      body: GestureDetector(
        child: Container(
          child:Center(
            child: Text(
              'Go Forwards To Screen 2',

            ),
          ),
        ),
        onTap: (){
          // Navigator.push(context, MaterialPageRoute(builder: (context){
          //   return Screen2();
          // }));

          Navigator.pushNamed(context, '/second');
        },
      ),
    );
  }

}