import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../core/colors.dart';

class AskFriendsButton extends StatelessWidget {
  const AskFriendsButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            padding: EdgeInsets.fromLTRB(4, 10, 10, 10),
            side: BorderSide(width: 3, color: textColor)),
        onPressed: () {},
        child: Row(
          spacing: 10,
          children: [
            Text(
              'Ask Friends',
              style: TextStyle(color: textColor, fontSize: 16),
            ),
            Icon(
              FontAwesomeIcons.userGroup,
              size: 20,
              color: blueColor,
            ),
          ],
        ));
  }
}
