import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'answer_state.dart';

class AnswerCubit extends Cubit<AnswerState> {
  AnswerCubit() : super(AnswerInitial());
  getAnswer (String letter )
  {
    List <String> answer = [];
    answer.add(letter);
    print(answer);

emit(Answerlist(answers: answer))    ;
  }

}
