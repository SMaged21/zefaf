import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:online_shopping/model/User.dart';
import 'package:online_shopping/model/productModel.dart';

class FireStore {
  static final auth = FirebaseAuth.instance;
  static Future<void> Add(String name, String phoneNumber, String age) async {
    await FirebaseFirestore.instance
        .collection("Users")
        .add({'name': name, 'phoneNumber': phoneNumber, 'age': age});
    print("added");
  }

  // static Future<void> AddUserInfo(
  //     String name, String phoneNumber, String age) async {
  //   await FirebaseFirestore.instance
  //       .collection("Users")
  //       .doc(auth.currentUser!.uid)
  //       .set({'name': name, 'phoneNumber': phoneNumber, 'age': age});
  //   print("added");
  // }

  static Future<List<Product>> getProducts(String productType) async {
    try {
      QuerySnapshot querySnapshot =
          await FirebaseFirestore.instance.collection(productType).get();

      List<Product> products = querySnapshot.docs.map((doc) {
        return Product.fromFirestore(doc.data() as Map<String, dynamic>);
      }).toList();

      return products;
    } catch (e) {
      print("Error getting documents: $e");
      return [];
    }
  }

  static Future<User1?> getUserInfo(String userId) async {
    try {
      DocumentSnapshot snapshot = await FirebaseFirestore.instance
          .collection('users')
          .doc(userId)
          .get();

      if (snapshot.exists) {
        Map<String, dynamic> data = snapshot.data() as Map<String, dynamic>;
        return User1(
          name: data['name'] ?? '',
          phoneNumber: data['phoneNumber'] ?? '',
          age: data['age'] ?? '',
        );
      }
    } catch (e) {
      print('Error fetching user info: $e');
    }
    return null;
  }
}
