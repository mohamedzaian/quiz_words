import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/colors.dart';
import '../../../../core/custom_bold_text.dart';
import '../../../home/data/model/level_model.dart';

class AnswerGridView extends StatelessWidget {
  const AnswerGridView({
    super.key,
    required this.data, required this.answer,
  });
  final List<String> answer ;

  final QuestionModel data;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: context.height * 0.13,
        child: GridView.builder(
            physics: NeverScrollableScrollPhysics(),
            padding: EdgeInsets.symmetric(horizontal: 12),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 8,
                mainAxisSpacing: 12,
                crossAxisSpacing: 6,
                childAspectRatio: 1),
            itemCount: data.a.length,
            itemBuilder: (context, i) {
              return Container(
                child: Center(
                    child: CustomBoldText(
                        text: answer.length > i ? answer[i] : '',
                        fontsize: 18)),
                height: 35,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: textColor),
              );
            }));
  }
}
