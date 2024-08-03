import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:online_shopping/blogic/firebase/auth.dart';
import 'Home.dart';
import 'SignUp.dart';
import 'theme.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 100.h,
          ),
          Row(
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
                    color: AppColor.secondaryColor,
                  )),
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          Row(
            children: [
              SizedBox(
                width: 20.w,
              ),
              Text(
                "SignIn",
                style: TextStyle(
                    color: AppColor.fourthColor,
                    fontSize: 40.sp,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(
            height: 25.h,
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextField(
              controller: _emailController,
              decoration: InputDecoration(
                  hintText: "  Enter your Email",
                  hintStyle: TextStyle(
                      fontSize: 20.sp, color: AppColor.secondaryColor),
                  labelText: "Email",
                  labelStyle: TextStyle(
                      fontSize: 20.sp, color: AppColor.secondaryColor),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                    borderSide:
                        BorderSide(color: AppColor.fourthColor, width: 2.w),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                    borderSide:
                        BorderSide(color: AppColor.fourthColor, width: 2.w),
                  ),
                  prefix: Icon(
                    Icons.email_outlined,
                    color: AppColor.secondaryColor,
                  )),
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                  hintText: "  Enter your Password",
                  hintStyle: TextStyle(
                      fontSize: 20.sp, color: AppColor.secondaryColor),
                  labelText: "Password",
                  labelStyle: TextStyle(
                      fontSize: 20.sp, color: AppColor.secondaryColor),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                    borderSide:
                        BorderSide(color: AppColor.fourthColor, width: 2.w),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                    borderSide:
                        BorderSide(color: AppColor.fourthColor, width: 2.w),
                  ),
                  prefix: Icon(
                    Icons.password,
                    color: AppColor.secondaryColor,
                  )),
            ),
          ),
          SizedBox(
            height: 40.h,
          ),
          GestureDetector(
            onTap: () {
              try {
                Authen.signIn(_emailController.text.trim(),
                    _passwordController.text.trim());
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Home()));
              } catch (e) {
                print(e);
              }
            },
            child: Container(
              height: 50.h,
              width: 300.w,
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
            height: 20.h,
          ),
          GestureDetector(
            onTap: () {
              try {
                Authen.signInWithGoogle();
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Home()));
              } catch (e) {
                print(e);
              }
            },
            child: Container(
              height: 50.h,
              width: 300.w,
              decoration: BoxDecoration(
                color: AppColor.thirdColor,
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
          ),
          SizedBox(
            height: 30.h,
          ),
          Row(
            children: [
              Text(
                "Don't have account?",
                style: TextStyle(fontSize: 18.sp, color: Colors.grey),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignUp()));
                  },
                  child: Text(
                    "create account",
                    style:
                        TextStyle(color: AppColor.fourthColor, fontSize: 20.sp),
                  ))
            ],
          )
        ],
      ),
    ));
  }
}
