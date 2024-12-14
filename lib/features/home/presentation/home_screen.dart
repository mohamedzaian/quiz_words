import 'package:flutter/material.dart';
import 'package:quizz/features/home/presentation/widgets/home_drawer.dart';
import 'package:quizz/features/home/presentation/widgets/home_screen_body.dart';
import 'package:quizz/features/home/presentation/widgets/title_text.dart';


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
      drawer: HomeDrawer(),
      body: const HomeScreenBody(),
    );
  }
}
