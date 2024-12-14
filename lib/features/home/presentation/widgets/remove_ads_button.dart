import 'package:flutter/material.dart';
import 'package:quizz/core/custom_text.dart';

class RemoveAdsButton extends StatelessWidget {
  const RemoveAdsButton({super.key});

  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(onPressed: ()
        {
        }, child: CustomText(text: 'REMOVE ADS',fontsize: 20,),
    style:ElevatedButton.styleFrom(
      backgroundColor: Color(0xff4D2501),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      )
    )

     );
  }
}
