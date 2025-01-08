import 'package:flutter/material.dart';

import '../../../../core/colors.dart';
import '../../../home/data/model/level_model.dart';

class AnswerGridView extends StatelessWidget {
  const AnswerGridView({
    super.key,
    required this.data,
  });

  final QuestionModel data;

  @override
  Widget build(BuildContext context) {
    return Expanded(


        child:
    GridView.builder(
        padding: EdgeInsets.symmetric(horizontal: 12),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 8 , mainAxisSpacing: 12 , crossAxisSpacing: 6 , childAspectRatio: 1),
        itemCount: data.a.length,

        itemBuilder: (context, i )
        {
          return Container(
            height: 35,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: textColor),


          );
        }));
  }
}

