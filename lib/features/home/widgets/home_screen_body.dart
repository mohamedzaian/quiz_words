import 'package:flutter/material.dart';
import 'package:quizz/features/home/widgets/grid_view.dart';
import 'package:quizz/features/home/widgets/levels_text.dart';
import 'package:quizz/features/home/widgets/remove_ads_button.dart';

import '../../../core/container decoration.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: ContainerDecoration,
        child: Column(children: [
          Container(

            color: Color(0xff4D2501),
            height: 50,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  LevelsText(),
                ],

              ),
            ),
          ),
          const SizedBox(height: 15,),
          RemoveAdsButton(),
          const SizedBox(height: 15,),
          CustomGridView()

        ]));
  }
}
