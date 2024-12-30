import 'package:flutter/material.dart';

import '../../../../core/custom_text.dart';
import '../../../home/data/model/level_model.dart';

class Question extends StatelessWidget {
  const Question({
    super.key,
    required this.data,
  });

  final QuestionModel data;

  @override
  Widget build(BuildContext context) {
    return Center(child: CustomText(text: 'This is the ${data.q}', fontsize: 24 , color: Color(0xff4F81A8),), );
  }
}