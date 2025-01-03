import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  StyledText(this. text,{super.key});

final String text;



  @override
  Widget build(context){
    return  Text(
      text,
     style:TextStyle(
           color:  Colors.white24,
           fontSize: 32,   
            ),
             );
  }

}