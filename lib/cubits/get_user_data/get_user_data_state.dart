part of 'get_user_data_cubit.dart';

@immutable
sealed class GetUserDataState {}

final class GetUserDataInitial extends GetUserDataState {}
final class GetUserDataLoading extends GetUserDataState {}
final class GetUserDataSuccess extends GetUserDataState {
  final UserModel userModel ;

  GetUserDataSuccess({required this.userModel});

}
final class GetUserDataFailed extends GetUserDataState {
  final String errorMessage;

  GetUserDataFailed({required this.errorMessage});
}
