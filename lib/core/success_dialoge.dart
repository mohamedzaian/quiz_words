import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/cupertino.dart';

successDialoge (BuildContext context , int index)
{
  AwesomeDialog(
    context: context,
    dialogType: DialogType.success,
    headerAnimationLoop: false,
    animType: AnimType.scale,
    title: 'Success',
    desc: 'Your Answer is correct',

    btnOkOnPress: () {
      index++;
    },
  ).show();
}