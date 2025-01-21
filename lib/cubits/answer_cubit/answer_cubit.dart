import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'answer_state.dart';

class AnswerCubit extends Cubit<AnswerState> {
  AnswerCubit() : super(AnswerInitial());
  List <String> answer = [];

  setAnswer (String letter )
  {
    answer.add(letter);
    print(answer);

   ;
  }
  getAnswer ()
  {
    print('.....$answer');
    emit(Answerlist(answers: answer));

  }


}
