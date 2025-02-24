import 'package:bloc/bloc.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:meta/meta.dart';
import 'package:quizz/features/home/data/model/level_model.dart';

part 'get_data_state.dart';

class DataCubit extends Cubit<DataState> {
  DataCubit() : super(DataInitial());

  Future <void> GetData(int key) async {
    emit(DataLoading());
    try {
      final snapshot =
          await FirebaseDatabase.instance.ref('data').child('0$key').get();
      List<QuestionModel> questions = [];
      final data = snapshot.value as Map;
      for (final levelKey in data.keys) {
        final levelData = Map<String, dynamic>.from(data[levelKey] as Map);

        final question = QuestionModel.fromJson(levelData);
        questions.add(question);
      }
      emit(DataSuccess(list: questions));
    } on Exception catch (e) {
      emit(DataError(message: e.toString()));
    }
  }
}
