import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quizz/cubits/data_cubit/get_data_cubit.dart';

faildDialoge(BuildContext context ,)
{
 AwesomeDialog(
    context: context,
    dialogType: DialogType.error,
    headerAnimationLoop: false,
    animType: AnimType.scale,
    title: 'Error',
    desc: 'Please fill in all required fields!',
    btnCancelOnPress: () {
    },
  )..show();

}