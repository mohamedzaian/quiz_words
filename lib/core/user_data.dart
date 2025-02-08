import 'package:firebase_auth/firebase_auth.dart';

import '../features/level/data/models/user_model.dart';

class UserData
{
  List<Level> level = [Level(currentLevelQuestion: 0, total: 0)];
  final user = FirebaseAuth.instance.currentUser!;

 UserModel addModel ()
{
  UserModel userModel =  UserModel(levels: level, currentQuestion: 0, total: 0, image: user.photoURL!, name: user.displayName!, score: 0);
  return userModel;
}
}