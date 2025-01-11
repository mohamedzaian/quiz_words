part of 'answer_cubit.dart';

@immutable
sealed class AnswerState {}

final class AnswerInitial extends AnswerState {}
final class Answerlist extends AnswerState {
   final List<String> answers;

   Answerlist({required this.answers}) ;
}



