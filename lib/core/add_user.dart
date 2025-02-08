import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';

import '../features/level/data/models/user_model.dart';

Future <void> adduser(UserModel userModel)async
{
  final user = FirebaseAuth.instance.currentUser;
  final DatabaseReference database = await FirebaseDatabase.instance.ref(
      "users").child('${user!.uid}');
  database.set(
      userModel.toJson()
  );
}