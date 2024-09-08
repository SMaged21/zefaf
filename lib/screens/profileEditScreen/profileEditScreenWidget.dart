import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_shopping/screens/HomeScreen/homeScreen.dart';
import 'package:online_shopping/theme/colors.dart';

Widget profileImg() {
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
        profileTextField("Full Name", Icons.person, nameController),
        SizedBox(
          height: 15.h,
        ),
        profileTextField("Phone Number", Icons.phone, phoneController),
        SizedBox(
          height: 15.h,
        ),
        profileTextField("age", Icons.date_range, ageController),
      ],
    ),
  );
}

Widget profileTextField(String labelText, icon, Controoler) {
  return Padding(
    padding: const EdgeInsets.all(12.0),
    child: TextField(
      controller: Controoler,
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

Widget profileSubmitButton(
    context, nameController, phoneController, ageController) {
  return Center(
    child: ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: secondaryColor),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Homescreen()));
        },
        child: Text(
          "submit",
          style: TextStyle(color: primeColor, fontSize: 25.sp),
        )),
  );
}
