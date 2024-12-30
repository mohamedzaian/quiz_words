import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:quizz/cubits/data_cubit/get_data_cubit.dart';
import 'package:quizz/features/home/data/model/level_model.dart';
import 'package:quizz/features/level/presentation/widgets/custom_appbar.dart';
import 'package:quizz/features/level/presentation/widgets/custom_image.dart';
import 'package:quizz/features/level/presentation/widgets/question.dart';
import 'package:cached_network_image/cached_network_image.dart';


class LevelScreenBody extends StatefulWidget {
  const LevelScreenBody({super.key, required this.index,});
  final int index;

  @override
  State<LevelScreenBody> createState() => _LevelScreenBodyState();
}

class _LevelScreenBodyState extends State<LevelScreenBody> {
  int initializeIndex = 0;
  @override
  void initState() {
    context.read<DataCubit>().GetData(widget.index);
    super.initState();
  }
  Widget build(BuildContext context) {

    return BlocBuilder<DataCubit, DataState>(
      builder: (context, state) {
        if (state is DataLoading)
          {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        if (state is DataSuccess) {
          final data = state.list[initializeIndex];
          return Column(
            spacing: 20,
            children: [
              CustomAppbar(initializeIndex: initializeIndex ,length: state.list.length,),
              Question(data: data),
              CustomImage(data: data),
              SizedBox(height: 20,),




            ],
          );
        }
        if (state is DataError)
          {
            return Center(
              child: Text(state.message),
            );
          }
        return Container(); // Placeholder for no data
      },
    );
  }
}




