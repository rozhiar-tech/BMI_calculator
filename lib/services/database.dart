import 'package:cloud_firestore/cloud_firestore.dart';

final _firestore = FirebaseFirestore.instance;

class DatabaseMethods {
  uploadUserInfo(userMap, userId) {
    _firestore.collection('users').doc(userId).set(userMap);
  }
}
