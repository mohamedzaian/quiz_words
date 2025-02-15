import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:quizz/features/level/data/models/user_model.dart';

void addNewLevel() async
{
  final uid = FirebaseAuth.instance.currentUser!.uid;
  final ref = await FirebaseDatabase.instance.ref('users');
  ref.child('$uid/data/levels').set(
    Level(currentLevelQuestion: 1, total: 0).toJson()
  );

}