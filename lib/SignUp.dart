import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_shopping/blogic/firebase/auth.dart';
import 'SignIn.dart';
import 'profileSignUp.dart';
import 'theme.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
            height: 5.h,
          ),
          Row(
            children: [
              SizedBox(
                width: 20.w,
              ),
              Text(
                "Create\nAccount",
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
            height: 30.h,
          ),
          GestureDetector(
            onTap: () {
              try {
                Authen.CreateUser(_emailController.text.trim(),
                    _passwordController.text.trim());
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ProfileSignUpScreen()));
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
                  "SignUp",
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
            onTap: () {},
            child: Container(
              height: 50.h,
              width: 300.w,
              decoration: BoxDecoration(
                color: AppColor.thirdColor,
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
          ),
          SizedBox(
            height: 10.h,
          ),
          Row(
            children: [
              Text(
                "Already have an account?",
                style: TextStyle(fontSize: 18.sp, color: Colors.grey),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignIn()));
                  },
                  child: Text(
                    "logIn",
                    style:
                        TextStyle(color: AppColor.fourthColor, fontSize: 20.sp),
                  ))
            ],
          )
        ],
      ),
    ));
  }
  // @override
  // void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  //   super.debugFillProperties(properties);
  //   properties.add(DiagnosticsProperty<FirebaseAuth>('auth', auth));
  // }
}
