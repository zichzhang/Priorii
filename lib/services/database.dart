import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {

  final String uid;
  DatabaseService({ this.uid });

  // collection reference
  final CollectionReference eventCollection = Firestore.instance.collection('events');

  Future updateUserData(String name, String task, String startTime, String endTime) async {
    return await eventCollection.document(uid).setData({
      'name': name,
      'task': task,
      'startTime': startTime,
      'endTime': endTime,
    });
  }

  // get events stream
  Stream<QuerySnapshot> get events {
    return eventCollection.snapshots();
  }

}