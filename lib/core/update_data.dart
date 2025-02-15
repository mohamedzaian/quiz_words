import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';

 Future <void> updateData(int currentLevelQuestion , int total ,int index) async {
  final uid = FirebaseAuth.instance.currentUser!.uid;

  final DatabaseReference  databaseRef = await FirebaseDatabase.instance.ref();
final levelRef   =  databaseRef.child('/users/$uid/data/levels/${index -1}');
await levelRef.update(
  {
    'currentLevelQuestion': currentLevelQuestion  + 1, // New value for currentLevelQuestion
    'total': total + 1, //
  }
);

}

