import 'package:flutter/material.dart';
@immutable

class CustomBoldText extends StatelessWidget {
   CustomBoldText({this.color , super.key, required this.text, required this.fontsize});
final String text;
final double fontsize;
final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(text , style: TextStyle(
      fontSize: fontsize,
      color:color ?? Colors.white,
        fontWeight: FontWeight.bold,

        fontFamily: 'Poppins',



    ),);
  }
}
