import 'package:flutter/material.dart';

import '../../../../core/colors.dart';
import '../../../../core/images.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({
    super.key,
    required this.initializeIndex,
    required this.length, required this.currentLevelQuestion, required this.total,
  });

  final int initializeIndex;
  final int length;
  final int currentLevelQuestion;
  final int total;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      height: 80,
      decoration: BoxDecoration(
        color: brownColor,
      ),
      child: Row(
        children: [
          Container(
            height: 50,
            width: 100,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25)),
            child: Row(
              spacing: 20,
              children: [
                Image.asset(
                  Images.categoryImage,
                  scale: 2,
                ),
                Text(
                  '$total',
                  style: TextStyle(fontSize: 32 ,color: textColor),
                )
              ],
            ),
          ),
          Spacer(),
          Container(
            padding: EdgeInsets.symmetric(horizontal:8),
            height: 50,
            width: 70,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25)),
            child: Row(


              spacing: 20,
              children: [
                Text("${currentLevelQuestion + 1 }/${length}",
                  style: TextStyle(fontSize: 30
                      ,
                      color: textColor),
                )
              ],
            ),
          ),

        ],
      ),
    );
  }
}
