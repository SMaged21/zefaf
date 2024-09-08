import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_shopping/screens/WelcomeScreen/welcomeScreenWidget.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 150.h,
          ),
          appImg(),
          SizedBox(
            height: 100.h,
          ),
          Row(
            children: [
              SizedBox(
                width: 20.w,
              ),
              SignIn(context),
              SizedBox(
                width: 20.w,
              ),
              SignUp(context)
            ],
          )
        ],
      ),
    );
  }
}
