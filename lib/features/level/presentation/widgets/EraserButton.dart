import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../core/colors.dart';

class EraserButton extends StatelessWidget {
  const EraserButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 23,
      backgroundColor: textColor,
      child: CircleAvatar(
        backgroundColor: Colors.white,

        radius: 20,
        child: Icon(FontAwesomeIcons.eraser , color: blueColor,) ,

      ),
    );
  }
}
