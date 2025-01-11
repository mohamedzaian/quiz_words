import 'package:flutter/material.dart';

Decoration ContainerDecoration = BoxDecoration(
    gradient: LinearGradient(colors:
    [
      Color(0xff54300C),
      Color(0xFFB58250),
      Color(0xFFD9BFA3),
      Color(0xFFFFffff)
    ],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    )



);
Decoration splashDecoration = BoxDecoration(
  gradient: LinearGradient(
    colors: [
      Color(0xffFFD0A2),
      Color(0xffFFD0A2),
      Color(0xFFFFffff),
    ],
    begin: Alignment.topLeft, // Gradient starts here
    end: Alignment.bottomRight,
  ),
);