import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubits/answer_cubit/answer_cubit.dart';


faildDialoge(BuildContext context ,List<String>answers)
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