import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quizz/core/sign_in_with_google_service.dart';
import 'package:quizz/cubits/add_user_cubit/add_user_cubit.dart';
import '../../../../core/images.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return   GestureDetector(
      onTap: () async
      {
      await  signInWithGoogle();
      context.read<AddUserCubit>().addNewUser();



      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Container(
          width: double.infinity,
          height: 55,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),


          ),
          child: Row(
            children: [
              Image.asset(Images.googleLogo , scale: 4.5,),
              SizedBox(width: 40,),
              Text('Sign in with Google', style:
              TextStyle(color: Colors.brown,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                fontFamily: 'neosans',
              ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
