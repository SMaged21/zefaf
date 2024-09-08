import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_shopping/bloc/cubitProfile/CubitProfile.dart';
import 'package:online_shopping/theme/colors.dart';

Widget header(context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
      IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.save,
            size: 50.sp,
            color: secondaryColor,
          )),
    ],
  );
}

Widget profileImgS() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      CircleAvatar(
        backgroundImage: AssetImage(
            "accessories/Wedding Hairstyles_ Tips & Trends for 2024.jpeg"),
        radius: 60.r,
      ),
    ],
  );
}

Widget profileFields(nameController, phoneController, ageController) {
  return Container(
    child: Column(
      children: [
        profileTextFieldS("Full Name", Icons.person, nameController),
        SizedBox(
          height: 15.h,
        ),
        profileTextFieldS("Phone Number", Icons.phone, phoneController),
        SizedBox(
          height: 15.h,
        ),
        profileTextFieldS("age", Icons.date_range, ageController),
      ],
    ),
  );
}

Widget profileTextFieldS(String labelText, icon, controller) {
  return Padding(
    padding: const EdgeInsets.all(12.0),
    child: TextField(
      controller: controller,
      decoration: InputDecoration(
          labelText: labelText,
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
            icon as IconData?,
            color: secondaryColor,
          )),
    ),
  );
}

Widget profileSubmitButtonS(
    BuildContext context,
    TextEditingController nameController,
    TextEditingController phoneController,
    TextEditingController ageController) {
  return Center(
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor: secondaryColor),
      onPressed: () {
        CubitProfile.get(context).AddUser(
            nameController.text, phoneController.text, ageController.text);
      },
      child: Text(
        "Submit",
        style: TextStyle(color: primeColor, fontSize: 25.sp),
      ),
    ),
  );
}
