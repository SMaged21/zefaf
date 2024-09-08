import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_shopping/bloc/cubitProfile/CubitProfile.dart';
import 'package:online_shopping/bloc/cubitProfile/CubitProfileState.dart';
import 'package:online_shopping/screens/HomeScreen/homeScreen.dart';
import 'package:online_shopping/screens/profileSignUpScreen/profileSignUpWidget.dart';
import 'package:online_shopping/theme/colors.dart';

class Profilesignupscreen extends StatefulWidget {
  const Profilesignupscreen({super.key});

  @override
  State<Profilesignupscreen> createState() => _ProfilesignupscreenState();
}

class _ProfilesignupscreenState extends State<Profilesignupscreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 50.h,
              ),
              Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        size: 60,
                        color: secondaryColor,
                      )),
                  SizedBox(
                    width: 200.w,
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              profileImgS(),
              profileFields(nameController, phoneController, ageController),
              profileSubmitButtonS(
                  context, nameController, phoneController, ageController),
              BlocConsumer<CubitProfile, ProfileState>(
                  builder: (context, state) {
                if (state is LoadingState) {
                  return CircularProgressIndicator();
                } else {
                  return Text("");
                }
              }, listener: (context, state) {
                if (state is SuccessState) {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Homescreen()));
                } else {
                  print("error");
                }
              })
            ],
          ),
        ),
      ),
    );
  }
}
