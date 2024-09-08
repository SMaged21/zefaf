import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_shopping/bloc/cubit_signIn/cubit_signin.dart';
import 'package:online_shopping/screens/SignUpScreen/signUpScreen.dart';
import 'package:online_shopping/theme/colors.dart';

Widget Header(context) {
  return Row(
    children: [
      SizedBox(
        width: 20.w,
      ),
      IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_circle_left_outlined,
            size: 60,
            color: secondaryColor,
          )),
    ],
  );
}

Widget signInText() {
  return Row(
    children: [
      SizedBox(
        width: 20.w,
      ),
      Text(
        "SignIn",
        style: TextStyle(
            color: fourthColor, fontSize: 40.sp, fontWeight: FontWeight.bold),
      ),
    ],
  );
}

Widget emailField(emailController) {
  return Padding(
    padding: const EdgeInsets.all(12.0),
    child: TextField(
      controller: emailController,
      decoration: InputDecoration(
          hintText: "  Enter your Email",
          hintStyle: TextStyle(fontSize: 20.sp, color: secondaryColor),
          labelText: "Email",
          labelStyle: TextStyle(fontSize: 20.sp, color: secondaryColor),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
            borderSide: BorderSide(color: fourthColor, width: 2.w),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
            borderSide: BorderSide(color: fourthColor, width: 2.w),
          ),
          prefix: Icon(
            Icons.email_outlined,
            color: secondaryColor,
          )),
    ),
  );
}

Widget passwordField(passwordController) {
  return Padding(
    padding: const EdgeInsets.all(12.0),
    child: TextField(
      controller: passwordController,
      obscureText: true,
      decoration: InputDecoration(
          hintText: "  Enter your Password",
          hintStyle: TextStyle(fontSize: 20.sp, color: secondaryColor),
          labelText: "Password",
          labelStyle: TextStyle(fontSize: 20.sp, color: secondaryColor),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
            borderSide: BorderSide(color: fourthColor, width: 2.w),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
            borderSide: BorderSide(color: fourthColor, width: 2.w),
          ),
          prefix: Icon(
            Icons.password,
            color: secondaryColor,
          )),
    ),
  );
}

Widget signInButton(context, TextEditingController emailController,
    TextEditingController passwordController) {
  return GestureDetector(
    onTap: () {
      CubitSignin.get(context).SignIn(
        emailController.text,
        passwordController.text,
      );
    },
    child: Container(
      height: 50.h,
      width: 300.w,
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

Widget signInwithGoogle(context) {
  return GestureDetector(
    onTap: () {
      CubitSignin.get(context).signInWithGoogle();
    },
    child: Container(
      height: 50.h,
      width: 300.w,
      decoration: BoxDecoration(
        color: thirdColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(
          "SignIn with google",
          style: TextStyle(
              fontSize: 25.sp,
              color: Colors.white,
              fontWeight: FontWeight.bold),
        ),
      ),
    ),
  );
}

Widget noaccount(context) {
  return Row(
    children: [
      Text(
        "Don't have account?",
        style: TextStyle(fontSize: 18.sp, color: Colors.grey),
      ),
      TextButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) => Signupscreen()));
          },
          child: Text(
            "create account",
            style: TextStyle(color: fourthColor, fontSize: 20.sp),
          ))
    ],
  );
}
