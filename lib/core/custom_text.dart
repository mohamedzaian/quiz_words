import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
   CustomText({this.color , super.key, required this.text, required this.fontsize});
final String text;
final double fontsize;
Color? color;
  @override
  Widget build(BuildContext context) {
    return Text(text , style: TextStyle(
      fontSize: fontsize,
      color:color ?? Colors.white,
        fontFamily: 'Poppins',



    ),);
  }
}