part of 'levels_cubit.dart';

@immutable
sealed class LevelsState {}

final class LevelsInitial extends LevelsState {}
final class LevelsLoading extends LevelsState {}
final class LevelsSuccess extends LevelsState {
  final List list ;
  LevelsSuccess({required this.list});
}
final class LevelsError extends LevelsState {
  final String error;
  LevelsError({required this.error});

}
