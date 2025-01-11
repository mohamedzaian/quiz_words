import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:quizz/core/list_of_random_letter.dart';
import 'package:quizz/cubits/answer_cubit/answer_cubit.dart';
import 'package:quizz/cubits/data_cubit/get_data_cubit.dart';
import 'package:quizz/features/level/presentation/widgets/EraserButton.dart';
import 'package:quizz/features/level/presentation/widgets/answer_gridview.dart';
import 'package:quizz/features/level/presentation/widgets/ask_friends_button.dart';
import 'package:quizz/features/level/presentation/widgets/custom_appbar.dart';
import 'package:quizz/features/level/presentation/widgets/custom_image.dart';
import 'package:quizz/features/level/presentation/widgets/letter_grid_view.dart';
import 'package:quizz/features/level/presentation/widgets/question.dart';
import 'package:quizz/features/level/presentation/widgets/show_answer_button.dart';
import 'package:quizz/features/level/presentation/widgets/skip_button.dart';

import '../../../../core/container decoration.dart';

class LevelScreenBody extends StatefulWidget {
  LevelScreenBody({
    super.key,
    required this.index,
  });

  final int index;

  @override
  State<LevelScreenBody> createState() => _LevelScreenBodyState();
}

class _LevelScreenBodyState extends State<LevelScreenBody> {
  int initializeIndex = 0;

  @override
  void initState() {
    context.read<DataCubit>().GetData(widget.index);
    super.initState();
  }

  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AnswerCubit(),
      child: BlocBuilder<DataCubit, DataState>(
        builder: (context, state) {
          if (state is DataLoading) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          if (state is DataSuccess) {
            final data = state.list[initializeIndex];
            print(data.a);
            return Container(
              decoration: splashDecoration,
              child: Column(
                spacing: 20,
                children: [
                  CustomAppbar(
                    initializeIndex: initializeIndex,
                    length: state.list.length,
                  ),
                  Question(data: data),
                  CustomImage(data: data),
                  SizedBox(
                    height: context.height * .01,
                  ),
                  AnswerGridView(data: data),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Row(
                      spacing: 6,
                      children: [
                        ShowAnswerButton(),
                        EraserButton(),
                        SkipButton(),
                        AskFriendsButton()
                      ],
                    ),
                  ),
                  LetterGridVIew(letters: getList(data.a), answer: data.a,)
                ],
              ),
            );
          }
          if (state is DataError) {
            return Center(
              child: Text(state.message),
            );
          }
          return Container(); // Placeholder for no data
        },
      ),
    );
  }
}


