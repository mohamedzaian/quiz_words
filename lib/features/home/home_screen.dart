import 'package:flutter/material.dart';
import 'package:quizz/features/home/widgets/home_screen_body.dart';
import 'package:quizz/features/home/widgets/title_text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: DrawerButton(),
        backgroundColor: Color(0xff4D2501),
        title: TitleText(),
      ),
      body: const HomeScreenBody(),
    );
  }
}
