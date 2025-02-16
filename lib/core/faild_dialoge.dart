import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/cupertino.dart';



faildDialoge(BuildContext context )
{
 AwesomeDialog(
    context: context,
    dialogType: DialogType.error,
    headerAnimationLoop: false,
    animType: AnimType.scale,
    title: 'Error',
    desc: 'The answer isn\'t correct Please try again',
    btnCancelOnPress: () {



    },
  )..show();

}