import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:online_shopping/firebase/firestore.dart';
import 'package:online_shopping/model/User.dart';
import 'package:online_shopping/screens/profileScreen/profileScreenWidget.dart';

class Profilescreen extends StatefulWidget {
  const Profilescreen({super.key});

  @override
  State<Profilescreen> createState() => _ProfilescreenState();
}

class _ProfilescreenState extends State<Profilescreen> {
  String userId = FirebaseAuth.instance.currentUser!.uid;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: FutureBuilder<User1?>(
        future: FireStore.getUserInfo(userId),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          }
          User1 user = snapshot.data ??
              User1(name: "salma", phoneNumber: "01004691832", age: "21");

          return SingleChildScrollView(
            child: Column(
              children: [
                header(context),
                Body(user),
                SizedBox(height: 20),
                tail(context, user),
              ],
            ),
          );
        },
      ),
    ));
  }
}
