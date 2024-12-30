import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../home/data/model/level_model.dart';

class CustomImage extends StatelessWidget {
  const CustomImage({
    super.key,
    required this.data,
  });

  final QuestionModel data;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(

        height: context.height / 3.5,
        width: context.width,

        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            image: DecorationImage(image: NetworkImage(data.i) , fit: BoxFit.fill
            )

        ),

      ),
    );
  }
}
