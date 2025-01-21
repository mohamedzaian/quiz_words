import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizz/core/colors.dart';
import 'package:quizz/core/custom_text.dart';
import 'package:quizz/core/faild_dialoge.dart';
import 'package:quizz/core/success_dialoge.dart';

import '../../../../core/empty_dialoge.dart';

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
  ListEquality listEqual = ListEquality();
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




if (widget.answer1.isNotEmpty) {
                if (equal) {
                  successDialoge(
                    context,
                    widget.answer1
                  );
                  widget.index++;
                } else {
                  faildDialoge(context,widget.answer1);
                }
              }
              showEmptyListDialog(context);

            },
            child: CustomText(text: "Done", fontsize: 20)),
      ),
    );
  }
}
