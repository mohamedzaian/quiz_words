import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';


class UpdateData {




  static Future<void>updateLvlData(int currentLevelQuestion, int levelTotal, int index,int listLength)async
  {
    final uid = FirebaseAuth.instance.currentUser!.uid;


    final DatabaseReference databaseRef =  await FirebaseDatabase.instance.ref();

    final levelRef = databaseRef.child('users/$uid/data/levels/${index }');

    if (currentLevelQuestion < listLength   && levelTotal < listLength -1  )
      await levelRef.update({
        'currentLevelQuestion': currentLevelQuestion + 1,
        'total': levelTotal + 1,
      });


  }
  static Future<void>updateUserData(int total ,int currentQuestion) async
  {
    final uid = FirebaseAuth.instance.currentUser!.uid;

    final DatabaseReference databaseRef =  await FirebaseDatabase.instance.ref();

    final userRef = databaseRef.child('users/$uid/data');




    await userRef.update({
      'total': total + 1,
      'currentQuestion': currentQuestion + 1,
    });
  }
}