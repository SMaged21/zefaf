import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_shopping/screens/profileEditScreen/profileEditScreenWidget.dart';
import 'package:online_shopping/screens/profileScreen/profileScreenWidget.dart';

class Profileeditscreen extends StatefulWidget {
  const Profileeditscreen({super.key});

  @override
  State<Profileeditscreen> createState() => _ProfileeditscreenState();
}

class _ProfileeditscreenState extends State<Profileeditscreen> {
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
              header(context),
              profileImg(),
              SizedBox(
                height: 100.h,
              ),
              profileFields(nameController, phoneController, ageController),
              profileSubmitButton(
                  context, nameController, phoneController, ageController),
            ],
          ),
        ),
      ),
    );
  }
}
