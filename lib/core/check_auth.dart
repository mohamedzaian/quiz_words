import 'package:firebase_auth/firebase_auth.dart';

bool checkAuth ()
{
  final authId = FirebaseAuth.instance.currentUser!.uid;
  if (authId != null) {
    return true;
  } else {
    return false;
  }

}