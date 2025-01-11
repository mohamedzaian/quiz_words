import 'package:flutter/material.dart';

import '../../../../core/colors.dart';
import '../../../../core/custom_bold_text.dart';
class LetterGridVIew extends StatefulWidget {
  LetterGridVIew({
    super.key,
    required this.letters, required this.answer,
  });

  final List<String> letters;
  final String answer;


  @override
  State<LetterGridVIew> createState() => LetterGridVIewState();
}

class LetterGridVIewState extends State<LetterGridVIew> {
  bool visibility = true;
  List<String> answer = [];

  void initState() {
    widget.letters.shuffle();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
          itemCount: widget.letters.length,
          padding: EdgeInsets.symmetric(horizontal: 12),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 8,
              mainAxisSpacing: 12,
              crossAxisSpacing: 6,
              childAspectRatio: 1),
          itemBuilder: (context, i) {
            return GestureDetector(
              onTap: () {
                if (answer.length < widget.answer.length)
                  {
                    answer.add(widget.letters[i]);
                    if (answer.length == widget.answer.length) {
                      setState(() {
                        visibility = false;
                      });
                    }
                  }

              },
              child: Visibility(
                visible: visibility,
                child: Container(
                  child: Center(
                    child:
                        CustomBoldText(text: widget.letters[i], fontsize: 18),
                  ),
                  height: 35,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: brownColor),
                ),
              ),
            );
          }),
    );
  }
}
