
import 'package:flutter/material.dart';

import '../../../../core/images.dart';


class SplashScreenBody extends StatelessWidget {
  const SplashScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: double.infinity,
      width: double.infinity,

      decoration:BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFFFFA726),
            Color(0xFFFFA726),
            Color(0xFFFFE0B2),
            Color(0xFFFFffff)
          ],
          begin: Alignment.topLeft, // Gradient starts here
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(
          child: Image.asset(Images.logo , scale: 0.5,)


      ),
    );
  }
}
