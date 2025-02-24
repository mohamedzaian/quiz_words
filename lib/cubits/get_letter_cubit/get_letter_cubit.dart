import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:quizz/core/list_of_random_letter.dart';

part 'get_letter_state.dart';

class GetLetterCubit extends Cubit<GetLetterState> {
  GetLetterCubit() : super(GetLetterInitial());
  List<String> getLetter(String answer)
  {
    List<String>letters = getList(answer);
    return letters;

  }
}
