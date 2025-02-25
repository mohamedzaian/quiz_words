import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'colors.dart';

passLevelDialog (BuildContext context )
{
  var answers;
  AwesomeDialog(
      context: context,
      dialogType: DialogType.success,
      headerAnimationLoop: true,
      animType: AnimType.scale,
      title: 'Perfect!',
      titleTextStyle: TextStyle(
          fontSize: 24.0,
          fontWeight: FontWeight.bold,
          color: textColor
      ),
      desc: '$answers',
      descTextStyle: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
          color: brownColor
      ),

      btnCancelColor: Colors.green,
      btnCancelText: 'Continue',
      dismissOnTouchOutside: true


  ).show();
}