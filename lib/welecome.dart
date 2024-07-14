import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'SignIn.dart';
import 'SignUp.dart';
import 'theme.dart';

class WelecomeScreen extends StatefulWidget {
  const WelecomeScreen({super.key});

  @override
  State<WelecomeScreen> createState() => _WelecomeScreenState();
}

class _WelecomeScreenState extends State<WelecomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
            height: 150.h,
          ),
          Center(
            child: Image(
              image: AssetImage("images/Screenshot 2024-07-04 002208.png"),
            ),
          ),
          SizedBox(
            height: 100.h,
          ),
          Row(
            children: [
              SizedBox(
                width: 20.w,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignIn()),
                  );
                },
                child: Container(
                  height: 50.h,
                  width: 150.w,
                  decoration: BoxDecoration(
                    color: AppColor.secondaryColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      "SignIn",
                      style: TextStyle(
                          fontSize: 25.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 20.w,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignUp()),
                  );
                },
                child: Container(
                  height: 50.h,
                  width: 150.w,
                  decoration: BoxDecoration(
                    color: AppColor.thirdColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      "SignUp",
                      style: TextStyle(
                          fontSize: 25.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
