import 'package:cloud_firestore/cloud_firestore.dart';

final _firestore = FirebaseFirestore.instance;

class DatabaseMethods {
  QuerySnapshot searchSnapshot;

  getUserByuserName(String username) async {}

  uploadUserInfo(userMap, userId) {
    _firestore.collection('users').doc(userId).set(userMap);
  }

  createChatRooms(String chatRoomId, chatRoomMap) {
    _firestore
        .collection("ChatRoom")
        .doc(chatRoomId)
        .set(chatRoomMap)
        .catchError((e) {
      print(e);
    });
  }
}
