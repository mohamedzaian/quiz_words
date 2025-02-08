import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:quizz/core/add_user.dart';
import 'package:quizz/core/user_data.dart';

part 'add_user_state.dart';

class AddUserCubit extends Cubit<AddUserState> {
  AddUserCubit() : super(AddUserInitial());



 addNewUser ()async
 {

   emit(AddUserLoading());
   await adduser(UserData().addModel());
   emit(AddUserSuccess());
 }

}
