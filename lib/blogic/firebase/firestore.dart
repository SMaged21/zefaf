import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:online_shopping/Model/user.dart';

class FireStore {
  static final auth = FirebaseAuth.instance;
  static Future<void> Add(String name, int phoneNumber, int age) async {
    await FirebaseFirestore.instance
        .collection("Users")
        .add({'name': name, 'phoneNumber': phoneNumber, 'age': age});
    print("added");
  }

  static Future<void> AddUserInfo(String name, int phoneNumber, int age) async {
    await FirebaseFirestore.instance
        .collection("Users")
        .doc(auth.currentUser!.uid)
        .set({'name': name, 'phoneNumber': phoneNumber, 'age': age});
    print("added");
  }

  // static Future<User1?> GetUserInfo() async {
  //   await FirebaseFirestore.instance
  //       .collection("Users")
  //       .doc(auth.currentUser!.uid)
  //       .get()
  //       .then((snapshot) {
  //     if (snapshot.exists) {
  //       User1? user = User1(
  //           name: snapshot.data()!["userName"],
  //           phoneNumber: snapshot.data()!["phoneNumber"],
  //           age: snapshot.data()!["age"]);
  //       return user;
  //     } else {
  //       return User1();
  //     }
  //   });
  //   return User1();
  // }
}
