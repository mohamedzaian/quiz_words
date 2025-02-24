import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:quizz/core/custom_bold_text.dart';
import 'package:quizz/core/list_of_random_letter.dart';
import 'package:quizz/core/update_data.dart';
import 'package:quizz/cubits/answer_cubit/answer_cubit.dart';
import 'package:quizz/cubits/data_cubit/get_data_cubit.dart';
import 'package:quizz/cubits/get_user_data/get_user_data_cubit.dart';
import 'package:quizz/features/home/data/model/level_model.dart';
import 'package:quizz/features/level/presentation/widgets/EraserButton.dart';
import 'package:quizz/features/level/presentation/widgets/answer_gridview.dart';
import 'package:quizz/features/level/presentation/widgets/ask_friends_button.dart';
import 'package:quizz/features/level/presentation/widgets/custom_appbar.dart';
import 'package:quizz/features/level/presentation/widgets/custom_image.dart';
import 'package:quizz/features/level/presentation/widgets/question.dart';
import 'package:quizz/features/level/presentation/widgets/show_answer_button.dart';
import 'package:quizz/features/level/presentation/widgets/skip_button.dart';
import '../../../../core/colors.dart';
import '../../../../core/container decoration.dart';
import '../../../../core/custom_text.dart';
import '../../../../core/faild_dialoge.dart';
import '../../data/models/user_model.dart';

class LevelScreenBody extends StatefulWidget {
  LevelScreenBody({
    super.key,
    required this.index,
    required this.level,
  });

  final int index;
  final Level level;

  @override
  State<LevelScreenBody> createState() => _LevelScreenBodyState();
}

class _LevelScreenBodyState extends State<LevelScreenBody> {
  bool visible = true;
  late List<bool> visibilityList;
  late List<String> invisibleList ;

  ListEquality listEqual = ListEquality();
  var initializeIndex;

  @override
  void initState() {

invisibleList = [];
    initializeIndex = widget.level.currentLevelQuestion  - 1 ;

    context.read<DataCubit>().GetData(widget.index);
    context.read<AnswerCubit>().getAnswer();
    super.initState();
  }

  Widget build(BuildContext context) {

      return BlocBuilder<DataCubit, DataState>(
      builder: (context, state) {
        if (state is DataLoading) {
          return Container(
            decoration: splashDecoration,
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
        if (state is DataSuccess) {
          final list = state.list;
          final data = state.list[initializeIndex];
          List<String> letters = getList(data.a);
          visibilityList = List.generate(letters.length, (_) => true);

          letters.shuffle();
          return BlocBuilder<AnswerCubit, AnswerState>(
            builder: (context, state) {
              if (state is Answerlist) {
                List<String> answer = state.answers;
                return BlocBuilder<GetUserDataCubit, GetUserDataState>(
                  builder: (context, state) {
                    if (state is GetUserDataSuccess) {

                      UserModel user = state.userModel;

                      return Container(
                        decoration: splashDecoration,
                        child: Column(
                          spacing: 20,
                          children: [
                            CustomAppbar(
                              currentLevelQuestion: user
                                      .levels[widget.index - 1]
                                      .currentLevelQuestion -
                                  1,
                              total: user.levels[widget.index - 1].total,
                              initializeIndex: initializeIndex,
                              length: list.length,
                            ),
                            Question(data: data),
                            CustomImage(data: data),
                            SizedBox(
                              height: context.height * .01,
                            ),
                            Center(
                              child: AnswerGridView(
                                answer: answer,
                                data: data,
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 12.0),
                              child: Row(
                                spacing: 6,
                                children: [
                                  ShowAnswerButton(),
                                  EraserButton(
                                    function: ()
                                    {
                                      for (bool value in visibilityList)
                                        {
                                          if (value == false)
                                            {
                                            }

                                        }

                                    },
                                    answer: answer,
                                    invisibleList: invisibleList,
                                  ),
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
                                  gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                          crossAxisCount: 8,
                                          mainAxisSpacing: 12,
                                          crossAxisSpacing: 6,
                                          childAspectRatio: 1),
                                  itemBuilder: (context, i) {
                                    return GestureDetector(
                                      onTap: () {

                                        if (answer.length < data.a.length) {
                                          context
                                              .read<AnswerCubit>()
                                              .setAnswer(letters[i]);
                                          context
                                              .read<AnswerCubit>()
                                              .getAnswer();
                                          visibilityList[i]= false;
                                          invisibleList.add(letters[i]);



                                        }
                                      },
                                      child: Visibility(
                                        visible: visibilityList[i],
                                        child: Container(
                                          child: Center(
                                            child: CustomBoldText(
                                                text: letters[i], fontSize: 18),
                                          ),
                                          height: 35,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              color: brownColor),
                                        ),
                                      ),
                                    );
                                  }),
                            ),
                            SizedBox(
                              width: context.width,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    bottom: 10, left: 14, right: 14),
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: textColor,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      padding: EdgeInsets.symmetric(
                                          vertical: 12, horizontal: 32),
                                    ),
                                    onPressed: () async {
                                      bool equal =
                                          listEquals(answer, data.a.split(''));
                                      answer.clear();
                                      context.read<AnswerCubit>().getAnswer();

                                      if (equal) {


                                         answerTrue(
                                            context, data, user, list);
                                      } else {
                                        faildDialoge(context);
                                      }
                                    },
                                    child:
                                        CustomText(text: "Done", fontSize: 20)),
                              ),
                            )
                          ],
                        ),
                      );
                    }
                    return SizedBox();
                  },
                );
              }
              return SizedBox();
            },
          );
        }
        if (state is DataError) {
          return Center(
            child: Text(state.message),
          );
        }
        return Container();
      },
    );
  }

  void answerTrue(BuildContext context, QuestionModel data,
      UserModel user, List<QuestionModel> list) async {
    // successDialog( context, data.a);
    if  (initializeIndex != list.length - 1) {
      await updateData(widget.level.currentLevelQuestion, widget.level.total,
          widget.index, user.total, user.currentQuestion);

      context.read<DataCubit>().GetData(widget.index);

      context.read<GetUserDataCubit>().getUserData();
    }
    if (initializeIndex != list.length - 1) {
      setState(() {
        initializeIndex++;
      });
    }
  }
}
