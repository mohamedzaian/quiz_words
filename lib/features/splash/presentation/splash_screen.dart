import 'package:flutter/material.dart';
import 'package:quizz/features/home/presentation/home_screen.dart';
import 'package:quizz/features/splash/presentation/widgets/splash_screen_body.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    Future.delayed(Duration(seconds: 2) , ()=>Get.offAll(()=>HomeScreen() , transition: Transition.rightToLeftWithFade) );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: const SplashScreenBody(),
    );
  }
}
