import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:quizz/core/custom_text.dart';
import 'package:quizz/cubits/levels_cubit/levels_cubit.dart';
import 'package:quizz/features/level/presentation/level_screen.dart';


class CustomGridView extends StatefulWidget {
  const CustomGridView({super.key});

  @override
  State<CustomGridView> createState() => _CustomGridViewState();
}

class _CustomGridViewState extends State<CustomGridView> {
  @override
  @override
  void initState() {
    context.read<LevelsCubit>().loadData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LevelsCubit, LevelsState>(
      builder: (context, state) {


        if(state is LevelsLoading){
          return Center(child: CircularProgressIndicator(),);
        }
        if (state is LevelsError) {
          return Center(child: Text(state.error),);
        }
        if (state is LevelsSuccess)
        {
          return Expanded(
            child: GridView.builder(
              padding: EdgeInsets.all(20),
              itemCount: state.count,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 1.3,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20),
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {


                    Get.to(
                      () => LevelScreen(index: index + 1,),
                    );
                  },
                  child: Container(
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
                    child: Stack(
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

        return SizedBox();
      },
    );
  }
}
