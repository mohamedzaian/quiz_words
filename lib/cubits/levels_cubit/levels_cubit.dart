import 'package:bloc/bloc.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:meta/meta.dart';
import 'package:quizz/features/home/data/model/level_model.dart';

part 'levels_state.dart';

class LevelsCubit extends Cubit<LevelsState> {
  LevelsCubit() : super(LevelsInitial());

  List keys = [];

  loadData() async {
    emit(LevelsLoading());

    final data = await FirebaseDatabase.instance.ref().child('data').get();
    final count = data.value as Map;

    keys = count.keys.toList();
    emit(LevelsSuccess(count: keys.length));
  }
}