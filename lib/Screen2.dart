import 'package:flutter/material.dart';

import 'Screen1.dart';

class Screen2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Screen 2'),
      ),
      body: GestureDetector(
        child: Container(
          child: Text(
            'Go Forwards To Screen 1',
          ),
        ),
        onTap: (){
          // Navigator.push(context, MaterialPageRoute(builder: (context){
          //   return Screen1();
          // }));
          Navigator.pushNamed(context, '/first');
        },
      ),
    );
  }

}