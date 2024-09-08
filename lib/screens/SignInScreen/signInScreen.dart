import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_shopping/bloc/cubit_signIn/cubit_signin.dart';
import 'package:online_shopping/bloc/cubit_signIn/cubit_signin_state.dart';
import 'package:online_shopping/screens/HomeScreen/homeScreen.dart';
import 'package:online_shopping/screens/SignInScreen/signInScreenWidget.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(
              height: 100.h,
            ),
            Header(context),
            SizedBox(
              height: 10.h,
            ),
            signInText(),
            SizedBox(
              height: 25.h,
            ),
            emailField(emailController),
            SizedBox(
              height: 15.h,
            ),
            passwordField(passwordController),
            SizedBox(
              height: 40.h,
            ),
            signInButton(context, emailController, passwordController),
            SizedBox(
              height: 20.h,
            ),
            BlocConsumer<CubitSignin, SignInState>(listener: (context, state) {
              if (state is SuccessState) {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => Homescreen()));
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
            signInwithGoogle(context),
            SizedBox(
              height: 30.h,
            ),
            noaccount(context),
          ],
        ),
      ),
    );
  }
}
