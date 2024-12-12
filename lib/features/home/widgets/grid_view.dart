import 'package:flutter/material.dart';
import 'package:quizz/core/custom_text.dart';

class CustomGridView extends StatelessWidget {
  const CustomGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        itemCount: 20,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
          childAspectRatio: 1.3,

          crossAxisSpacing: 10,
          mainAxisSpacing: 10
        ),
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(left: 15.0 , top: 10),
            child: Container(
              width: 100

            ,
              decoration: BoxDecoration(
                color: Color(0xffFD850D),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    offset: Offset(2, 2),
                    blurRadius: 4,
                  ),
                ],

              ),
              child:
              Stack(
                alignment: Alignment.center,
                children: [
                  CustomText(text: '${index + 1} ', fontsize: 30),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Icon(
                      Icons.check_circle,
                      size: 30,
                      color: Color(0xff65DB12),
                    ),
                  ),

                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
