import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';

void showEmptyListDialog(BuildContext context) {
  AwesomeDialog(
    context: context,
    dialogType: DialogType.info,
    headerAnimationLoop: false,
    animType: AnimType.bottomSlide,
    title: 'List is Empty',
    desc: 'please enter the answer',
    btnOkOnPress: () {},
  )..show();
}