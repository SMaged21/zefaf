import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_shopping/bloc/cubit_signup/cubit_signup.dart';
import 'package:online_shopping/screens/SignInScreen/signInScreen.dart';
import 'package:online_shopping/theme/colors.dart';

Widget signUpArrowBack(context) {
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

Widget createAccountText() {
  return Row(
    children: [
      SizedBox(
        width: 20.w,
      ),
      Text(
        "Create\nAccount",
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

Widget SignUpButton(context, TextEditingController emailController,
    TextEditingController passwordController) {
  return GestureDetector(
    onTap: () {
      CubitSignup.get(context).createUser(
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

Widget SignUpWithGoogle(context) {
  return GestureDetector(
    onTap: () {
      CubitSignup.get(context).signInWithGoogle();
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
          "SignUp with google",
          style: TextStyle(
              fontSize: 25.sp,
              color: Colors.white,
              fontWeight: FontWeight.bold),
        ),
      ),
    ),
  );
}

Widget AlreadyHaveAnAccount(context) {
  return Row(
    children: [
      Text(
        "Already have an account?",
        style: TextStyle(fontSize: 18.sp, color: Colors.grey),
      ),
      TextButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => SignInScreen()));
          },
          child: Text(
            "logIn",
            style: TextStyle(color: fourthColor, fontSize: 20.sp),
          ))
    ],
  );
}
