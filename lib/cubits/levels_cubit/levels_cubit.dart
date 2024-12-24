import 'package:bloc/bloc.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:meta/meta.dart';
import 'package:quizz/features/home/data/model/level_model.dart';

part 'levels_state.dart';

class LevelsCubit extends Cubit<LevelsState> {
  LevelsCubit() : super(LevelsInitial());

  loadLevels() async {
    emit(LevelsLoading());
    final levels = await FirebaseDatabase.instance.ref('data');
    DatabaseEvent event = await levels.once();

    // final data = levels.value ;
    // List<QuestionModel> questions = [];

    final Map<dynamic, dynamic> levelData = Map<dynamic, dynamic>.from(event.snapshot.value as Map);
    final keys = levelData.keys.toList();
    // levelData.forEach((keys , value)
    // {
    //   keys.add(keys);
    // });
    print(keys);
    // for (var level in keys) {
    //   final levelData = data[level];
    //   if (levelData is Map) {
    //     final question = QuestionModel(
    //       q: levelData['q'],
    //       i: levelData['i'],
    //       a: levelData['a'],
    //     );
    //     questions.add(question);
    //   }
    // }
    //
    // print(questions);
  }
}
