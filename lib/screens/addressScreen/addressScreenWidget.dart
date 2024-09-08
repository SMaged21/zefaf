import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_shopping/screens/HomeScreen/homeScreen.dart';
import 'package:online_shopping/theme/colors.dart';

Widget screenFields() {
  return Container(
    child: Column(
      children: [
        addressTextField("Full Name", Icons.person),
        SizedBox(
          height: 15.h,
        ),
        addressTextField("PhoneNumber", Icons.phone),
        SizedBox(
          height: 15.h,
        ),
        addressTextField("City", Icons.location_city),
        SizedBox(
          height: 15.h,
        ),
        addressTextField("Address", Icons.home),
        SizedBox(
          height: 15.h,
        ),
      ],
    ),
  );
}

Widget submit(context) {
  return Center(
    child: ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: secondaryColor),
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => Homescreen()));
        },
        child: Text(
          "submit",
          style: TextStyle(color: primeColor, fontSize: 25.sp),
        )),
  );
}

Widget addressTextField(String labelText, icon) {
  return Padding(
    padding: const EdgeInsets.all(12.0),
    child: TextField(
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
