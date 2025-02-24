import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizz/core/custom_text.dart';

import '../../../../core/colors.dart';

class ShowAnswerButton extends StatelessWidget {
  const ShowAnswerButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.width * .35,
      child: ElevatedButton(
          style:ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              padding: EdgeInsets.fromLTRB(4,10,10,10),
              side: BorderSide(
                  width: 3,
                  color: textColor
              )
          ),
          onPressed: ()
          {

          }, child:
      Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(Icons.visibility, size: 25,color: blueColor,),
        CustomText(text: 'Show Answer', fontSize: 16 , color: brownColor,)
        ],
      )),
    );
  }
}


