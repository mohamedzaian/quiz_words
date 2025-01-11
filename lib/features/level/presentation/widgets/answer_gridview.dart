import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizz/core/custom_bold_text.dart';
import 'package:quizz/features/level/presentation/widgets/letter_grid_view.dart';

import '../../../../core/colors.dart';
import '../../../home/data/model/level_model.dart';

class AnswerGridView extends StatefulWidget {
    AnswerGridView({
    super.key,
    required this.data,
  });

  final QuestionModel data;


  @override
  State<AnswerGridView> createState() => AnswerGridViewState();
}

class AnswerGridViewState extends State<AnswerGridView> {
  @override
  List <String> answer = [] ;

@override
  void initState() {

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
height: context.height * 0.13,

        child:
    GridView.builder(
        padding: EdgeInsets.symmetric(horizontal: 12),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 8 , mainAxisSpacing: 12 , crossAxisSpacing: 6 , childAspectRatio: 1),
        itemCount: widget.data.a.length,

        itemBuilder: (context, i )
        {
          return Container(
            child: answer.isEmpty  ? null : Center(child: CustomBoldText(text: answer[i], fontsize: 18)),
            height: 35,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: textColor),


          );
        }));
  }
}

