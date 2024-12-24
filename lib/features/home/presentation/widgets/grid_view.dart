import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quizz/core/custom_text.dart';
import 'package:quizz/cubits/levels_cubit/levels_cubit.dart';
import 'package:quizz/features/home/data/repo/get_count_level.dart';

class CustomGridView extends StatefulWidget {
  const CustomGridView({super.key});

  @override
  State<CustomGridView> createState() => _CustomGridViewState();
}

class _CustomGridViewState extends State<CustomGridView> {
  @override
  void initState() {
    context.read<LevelsCubit>().loadLevels();

  }
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        padding: EdgeInsets.all( 20),
        itemCount: 5,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
          childAspectRatio: 1.3,

          crossAxisSpacing: 20,
          mainAxisSpacing: 20
        ),
        itemBuilder: (BuildContext context, int index) {
          return Container(

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
          );
        },
      ),
    );
  }
}
