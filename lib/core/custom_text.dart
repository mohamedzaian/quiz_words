import 'package:flutter/material.dart';
import 'package:quizz/core/responsive_text.dart';
@immutable

class CustomText extends StatelessWidget {
  CustomText({this.color , super.key, required this.text, required this.fontSize});
  final String text;
  final double fontSize;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(text , style: TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize),
      color:color ?? Colors.white,




    ),);
  }
}
