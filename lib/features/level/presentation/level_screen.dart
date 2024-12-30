import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quizz/cubits/data_cubit/get_data_cubit.dart';
import 'package:quizz/features/home/data/model/level_model.dart';
import 'package:quizz/features/level/presentation/widgets/level_screen_body.dart';

import '../../../core/images.dart';

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
 