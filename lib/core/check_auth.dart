import 'package:firebase_auth/firebase_auth.dart';

bool checkAuth ()
{
  User? authId = FirebaseAuth.instance.currentUser;
  if (authId == null) {
    return false;
  } else {
    return true;
  }

}