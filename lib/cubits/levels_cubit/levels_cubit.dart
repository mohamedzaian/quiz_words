import 'package:bloc/bloc.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:meta/meta.dart';
import 'package:quizz/features/home/data/model/level_model.dart';

part 'levels_state.dart';

class LevelsCubit extends Cubit<LevelsState> {
  LevelsCubit() : super(LevelsInitial());

  List<QuestionModel> questions = [];
  List keys = [];

  loadData() async {
    emit(LevelsLoading());

    try {
      final snapshot = await FirebaseDatabase.instance.ref().child('data').get();
      final data = snapshot.value as Map;

      keys = data.keys.toList();

      print('keys ==> $keys');

      for(final levelKey in data.keys) {
        final levelData = Map<String, dynamic>.from(data[levelKey] as Map);

        for(final questionKey in levelData.keys){
          final questionData = Map<String, dynamic>.from(levelData[questionKey] as Map);

          final question = QuestionModel.fromJson(questionData);
          questions.add(question);
        }
      }
      print('questions ==> $questions');

      emit(LevelsSuccess());
    } catch (e) {
      emit(LevelsError(error: e.toString()));
    }
  }
}
