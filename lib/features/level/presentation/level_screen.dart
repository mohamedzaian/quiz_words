
import 'package:flutter/material.dart';
import 'package:quizz/core/colors.dart';
import 'package:quizz/features/level/presentation/widgets/level_screen_body.dart';

import '../data/models/user_model.dart';


class LevelScreen extends StatelessWidget {
  const LevelScreen({super.key, required this.index, required this.level, });
  final int index;
  final Level level ;

  @override


  Widget build(BuildContext context) {
    return Container(
      color: brownColor,
      child: SafeArea(
        child: Scaffold(
          body: LevelScreenBody(index: index,level: level,),
        ),
      ),
    );
  }
}
 