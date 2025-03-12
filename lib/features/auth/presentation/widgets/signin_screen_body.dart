import 'package:flutter/material.dart';
import 'package:quizz/features/auth/presentation/widgets/login_button.dart';

import '../../../../core/images.dart';

class LoginScreenBody extends StatelessWidget {
  const LoginScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    return  Container(

      decoration: BoxDecoration(
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



      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: height / 10,
          ),
          Image.asset(Images.logoRound,scale: 1.5,),
          SizedBox(
            height: height / 100,
          ),
          Text('Supernatural Words Quiz',style: TextStyle(
            fontSize: 25,
            color: Colors.white,
            fontFamily: 'neosans',
          ),),
          SizedBox(
            height: height / 6.5,
          ),
          LoginButton()
        ],
      ),
    );
  }
}
