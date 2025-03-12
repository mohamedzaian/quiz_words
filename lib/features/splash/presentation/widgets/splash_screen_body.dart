
import 'package:flutter/material.dart';
import 'package:quizz/core/container%20decoration.dart';

import '../../../../core/images.dart';


class SplashScreenBody extends StatelessWidget {
  const SplashScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: double.infinity,
      width: double.infinity,
      decoration:ContainerDecoration,
      child: Center(
          child: Text('SUPERNATURAL',style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Color(0xff54300C),
            fontFamily: 'SPN',
          ),)
      ),
    );
  }
}
