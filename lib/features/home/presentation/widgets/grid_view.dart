import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:quizz/cubits/data_cubit/get_data_cubit.dart';
import 'package:quizz/cubits/get_user_data/get_user_data_cubit.dart';
import 'package:quizz/cubits/levels_cubit/levels_cubit.dart';
import 'package:quizz/features/home/presentation/widgets/container_level.dart';
import 'package:quizz/features/level/presentation/level_screen.dart';

import '../../../level/data/models/user_model.dart';


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
        if (state is LevelsLoading) {
          return Center(child: CircularProgressIndicator(),);
        }
        if (state is LevelsError) {
          return Center(child: Text(state.error),);
        }
        if (state is LevelsSuccess) {
          int count = state.count;
          return BlocBuilder<GetUserDataCubit, GetUserDataState>(
            builder: (context, state) {
              if (state is GetUserDataSuccess) {
                UserModel usermodel = state.userModel;
                print(usermodel.levels);
                return Expanded(
                  child: GridView.builder(
                    padding: EdgeInsets.all(20),
                    itemCount: count,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        childAspectRatio: 1.3,
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 20),
                    itemBuilder: (BuildContext context, int index) {
                     List <Level> levels = usermodel.levels;


                      return GestureDetector(


                        onTap: () {

                          Get.to(
                            () => LevelScreen(
                              index: index + 1 ,
                              level: levels[index],

                            ),
                          );
                        },
                        child: ContainerLevel(levels: levels , index : index),
                      );
                    },
                  ),
                );
              }
              return SizedBox();
            },
          );
        }

        return SizedBox();
      },
    );
  }
}

