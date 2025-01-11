import 'package:flutter/material.dart';
import 'package:quizz/features/level/presentation/widgets/level_screen_body.dart';


class LevelScreen extends StatelessWidget {
  const LevelScreen({super.key, required this.index,});
  final int index;

  @override


  Widget build(BuildContext context) {
    return Scaffold(
      

      body: LevelScreenBody(index: index,),
    );
  }
}
 