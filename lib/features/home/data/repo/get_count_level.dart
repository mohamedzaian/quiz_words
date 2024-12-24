import 'package:firebase_database/firebase_database.dart';

class DataRepo {


  Future<int> getCountOfLevel() async
 {

  final ref = await FirebaseDatabase.instance.ref('data').once();
  final data = await ref.snapshot.children.length;
  return data;

 }

}
