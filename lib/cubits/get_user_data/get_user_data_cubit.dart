import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:meta/meta.dart';
import 'package:quizz/features/level/data/models/user_model.dart';

part 'get_user_data_state.dart';

class GetUserDataCubit extends Cubit<GetUserDataState> {
  GetUserDataCubit() : super(GetUserDataInitial());
  Future <void> getUserData () async
  {
    emit(GetUserDataLoading());
    try {
      final user = FirebaseAuth.instance.currentUser;
      final snapshot =
      await FirebaseDatabase.instance.ref('users').child('${user!.uid}').get();
      final data = snapshot.value as Map;

      final userdata = Map<String, dynamic>.from(data );
      final userModel  = UserModel.fromJson(userdata);
print('the data is $data');
print('the datamodel is ${userModel.levels}');

      emit(GetUserDataSuccess(userModel: userModel));
    } on Exception catch (e) {
      emit(GetUserDataFailed(errorMessage: e.toString()));
    }



  }
}
