import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';

  Future <void> updateData(int currentLevelQuestion , int levelTotal ,int index , int total , int currentQuestion) async {
  final uid = FirebaseAuth.instance.currentUser!.uid;

  final DatabaseReference  databaseRef = await FirebaseDatabase.instance.ref();
final levelRef   =  databaseRef.child('/users/$uid/data/levels/${index -1}');
final userRef = databaseRef.child('/users/$uid/data');
 await levelRef.update(
  {
    'currentLevelQuestion': currentLevelQuestion  + 1,
    'total': levelTotal + 1,

  }


);
 await userRef.update(
   {
     'total' : total + 1,
     'currentQuestion' : currentQuestion  + 1

   }
 );


}

