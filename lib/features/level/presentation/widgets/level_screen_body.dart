import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:quizz/core/custom_bold_text.dart';
import 'package:quizz/core/list_of_random_letter.dart';
import 'package:quizz/cubits/answer_cubit/answer_cubit.dart';
import 'package:quizz/cubits/data_cubit/get_data_cubit.dart';
import 'package:quizz/features/level/presentation/widgets/EraserButton.dart';
import 'package:quizz/features/level/presentation/widgets/answer_gridview.dart';
import 'package:quizz/features/level/presentation/widgets/ask_friends_button.dart';
import 'package:quizz/features/level/presentation/widgets/custom_appbar.dart';
import 'package:quizz/features/level/presentation/widgets/custom_image.dart';
import 'package:quizz/features/level/presentation/widgets/done_button.dart';
import 'package:quizz/features/level/presentation/widgets/question.dart';
import 'package:quizz/features/level/presentation/widgets/show_answer_button.dart';
import 'package:quizz/features/level/presentation/widgets/skip_button.dart';
import '../../../../core/colors.dart';
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
  List<String> answer =[];

  @override
  void initState() {
    context.read<DataCubit>().GetData(widget.index);
    answer= [];

print(answer);
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
            List<String>letters = getList(data.a);
            letters.shuffle();
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
                  AnswerGridView(data: data, answer: answer),
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
                  Expanded(
                    child: GridView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: letters.length,
                        padding: EdgeInsets.symmetric(horizontal: 12),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 8,
                            mainAxisSpacing: 12,
                            crossAxisSpacing: 6,
                            childAspectRatio: 1),
                        itemBuilder: (context, i) {
                          return GestureDetector(
                            onTap: () {
                              if (answer.length < data.a.length )
                                {
                                  setState(() {
                                    answer.add(letters[i]);

                                  });

                                }




                            },
                            child: Visibility(
                              visible: true,
                              child: Container(
                                child: Center(
                                  child:
                                  CustomBoldText(text: letters[i], fontsize: 18),
                                ),
                                height: 35,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: brownColor),
                              ),
                            ),
                          );
                        }),
                  ),
                  DoneButton(answer1: answer, answer2: data.a,index: initializeIndex,)
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



