import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:quizz/core/custom_text.dart';

import '../../../../core/colors.dart';

class AskFriendsButton extends StatelessWidget {
  const AskFriendsButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.width * .35,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              padding: EdgeInsets.fromLTRB(4, 10, 10, 10),
              side: BorderSide(width: 3, color: textColor)),
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,


            children: [
              CustomText(text: "Ask Friends", fontSize: 16 , color: brownColor,),
              Icon(
                FontAwesomeIcons.userGroup,
                size: 20,
                color: blueColor,
              ),
            ],
          )),
    );
  }
}
