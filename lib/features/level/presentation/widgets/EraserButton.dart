import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../core/colors.dart';
import '../../../../cubits/answer_cubit/answer_cubit.dart';

class EraserButton extends StatefulWidget {
  const EraserButton({
    super.key, required this.answer,
  });
  final List<String>answer ;

  @override
  State<EraserButton> createState() => _EraserButtonState();
}

class _EraserButtonState extends State<EraserButton> {
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 23,
      backgroundColor: textColor,
      child: CircleAvatar(
        backgroundColor: Colors.white,

        radius: 20,
        child: IconButton(icon: Icon(FontAwesomeIcons.eraser , color: blueColor),
        onPressed: ()
          {
            widget.answer.removeLast();
            context.read<AnswerCubit>().getAnswer();



          },) ,

      ),
    );
  }
}
