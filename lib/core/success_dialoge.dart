import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quizz/cubits/answer_cubit/answer_cubit.dart';

successDialoge (BuildContext context ,List<String> answers)
{
  AwesomeDialog(
    context: context,
    dialogType: DialogType.success,
    headerAnimationLoop: false,
    animType: AnimType.scale,
    title: 'Success',
    desc: 'Your Answer is correct',

    btnOkOnPress: () {
      answers.clear();
      context.read<AnswerCubit>().getAnswer();

    },
  ).show();
}