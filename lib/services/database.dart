import 'package:cloud_firestore/cloud_firestore.dart';

final _firestore = FirebaseFirestore.instance;

class DatabaseMethods {
  QuerySnapshot searchSnapshot;

  getUserByuserName(String username) async {}

  uploadUserInfo(userMap, userId) {
    _firestore.collection('users').doc(userId).set(userMap);
  }

  getUserInfo(String email) async {
    return _firestore
        .collection("users")
        .where("email", isEqualTo: email)
        .get()
        .catchError((e) {
      print(e.toString());
    });
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
