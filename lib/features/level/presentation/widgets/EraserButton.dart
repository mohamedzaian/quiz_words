import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../core/colors.dart';
import '../../../../cubits/answer_cubit/answer_cubit.dart';

class EraserButton extends StatelessWidget {
  const EraserButton({
    super.key, required this.answerRemoved, required this.visibleList,
  });
  final List<String>answerRemoved ;
  final List<bool> visibleList ;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 23,
      backgroundColor: textColor,
      child: CircleAvatar(
        backgroundColor: Colors.white,

        radius: 20,
        child: IconButton(icon: Icon(FontAwesomeIcons.eraser , color: blueColor),
        onPressed:
            answerRemoved.length != 0 ?

            ()
          {
            int index = visibleList.lastIndexOf(false);
            answerRemoved.removeLast();
            visibleList[index]= true;
            visibleList.forEach((element) => print('the element number ${element} '));


            context.read<AnswerCubit>().getAnswer();


          } :null
        ) ,

      ),
    );
  }
}
