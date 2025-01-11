import 'package:flutter/material.dart';

import '../../../../core/colors.dart';

class ShowAnswerButton extends StatelessWidget {
  const ShowAnswerButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style:ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            padding: EdgeInsets.fromLTRB(4,10,10,10),
            side: BorderSide(
                width: 3,
                color: textColor
            )
        ),
        onPressed: ()
        {

        }, child:
    Row(
      spacing: 10,
      children: [
        Icon(Icons.visibility, size: 25,color: blueColor,),
        Text(
          'Show Answer',
          style: TextStyle(
              color: brownColor,
              fontSize: 16
          ),
        )
      ],
    ));
  }
}


