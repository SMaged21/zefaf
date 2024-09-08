import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_shopping/bloc/cubit_signup/cubit_signup.dart';
import 'package:online_shopping/bloc/cubit_signup/cubit_signup_state.dart';
import 'package:online_shopping/screens/SignUpScreen/signUpScreenWidget.dart';
import 'package:online_shopping/screens/profileSignUpScreen/profileSignUpScreen.dart';

class Signupscreen extends StatefulWidget {
  const Signupscreen({super.key});

  @override
  State<Signupscreen> createState() => _SignupscreenState();
}

class _SignupscreenState extends State<Signupscreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 100.h),
            signUpArrowBack(context),
            SizedBox(height: 5.h),
            createAccountText(),
            SizedBox(height: 25.h),
            emailField(emailController),
            SizedBox(height: 15.h),
            passwordField(passwordController),
            SizedBox(height: 30.h),
            SignUpButton(context, emailController, passwordController),
            BlocConsumer<CubitSignup, SignUpState>(listener: (context, state) {
              if (state is SuccessState) {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Profilesignupscreen()));
              }
            }, builder: (context, state) {
              if (state is LoadingState) {
                return CircularProgressIndicator();
              } else if (state is ErrorState) {
                return Text("error Message");
              } else {
                return Text("");
              }
            }),
            SizedBox(height: 20.h),
            SignUpWithGoogle(context),
            SizedBox(height: 10.h),
            AlreadyHaveAnAccount(context),
          ],
        ),
      ),
    );
  }
}
