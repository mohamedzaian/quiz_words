part of 'get_data_cubit.dart';

@immutable
sealed class DataState {}

final class DataInitial extends DataState {}
final class DataLoading extends DataState {}
final class DataSuccess extends DataState {
  final List <QuestionModel> list;
   DataSuccess({required this.list});
}
final class DataError extends DataState {
  final String message;
  DataError({required this.message});
}
