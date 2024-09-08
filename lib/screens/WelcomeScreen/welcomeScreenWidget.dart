import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_shopping/screens/SignInScreen/signInScreen.dart';
import 'package:online_shopping/screens/SignUpScreen/signUpScreen.dart';
import 'package:online_shopping/theme/colors.dart';

Widget appImg() {
  return const Center(
      child: Image(
    image: AssetImage("appImage/Screenshot 2024-07-04 002208.png"),
  ));
}

Widget SignIn(context) {
  return GestureDetector(
    onTap: () {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (BuildContext context) => SignInScreen(),
        ),
      );
    },
    child: Container(
      height: 50.h,
      width: 150.w,
      decoration: BoxDecoration(
        color: secondaryColor,
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
  );
}

Widget SignUp(context) {
  return GestureDetector(
    onTap: () {
      Navigator.of(context).push(
          MaterialPageRoute(builder: (BuildContext context) => Signupscreen()));
    },
    child: Container(
      height: 50.h,
      width: 150.w,
      decoration: BoxDecoration(
        color: thirdColor,
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
  );
}
