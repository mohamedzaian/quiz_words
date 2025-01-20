import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizz/core/colors.dart';
import 'package:quizz/core/custom_text.dart';
import 'package:quizz/core/faild_dialoge.dart';
import 'package:quizz/core/success_dialoge.dart';

class DoneButton extends StatefulWidget {
   DoneButton({super.key, required this.answer1, required this.answer2, required this.index,});
  final List<String> answer1;
  final String answer2;
    int index;

  @override
  State<DoneButton> createState() => _DoneButtonState();
}

class _DoneButtonState extends State<DoneButton> {
  @override
  final listEqual = ListEquality();
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.width,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 10, left: 14, right: 14),
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: textColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              padding: EdgeInsets.symmetric(vertical: 12, horizontal: 32),
            ),
            onPressed: () {
              bool equal = listEquals(widget.answer1, widget.answer2.split(''));

              if (equal) {
                successDialoge(context ,widget.index);
                widget.index++;
                setState(() {

                });
                print(widget.index);
              } else {
                setState(() {
                  faildDialoge(context );

                });
              }
            },
            child: CustomText(text: "Done", fontsize: 20)),
      ),
    );
  }
}
