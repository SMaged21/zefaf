import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Home.dart';
import 'theme.dart';

class ProfileSignUpScreen extends StatefulWidget {
  const ProfileSignUpScreen({super.key});

  @override
  State<ProfileSignUpScreen> createState() => _ProfileSignUpScreenState();
}

class _ProfileSignUpScreenState extends State<ProfileSignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
                    color: AppColor.secondaryColor,
                  )),
              SizedBox(
                width: 200.w,
              ),
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(
                    "images/44+ Ideas Flowers Wedding Bouquet Cascade White Roses.jpeg"),
                radius: 60.r,
              ),
            ],
          ),
          SizedBox(
            height: 30.h,
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextField(
              decoration: InputDecoration(
                  labelText: "Full Name",
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
                    Icons.person,
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
              decoration: InputDecoration(
                  labelText: "Phone Number",
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
                    Icons.phone,
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
              decoration: InputDecoration(
                  labelText: "age",
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
                    Icons.date_range,
                    color: AppColor.secondaryColor,
                  )),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Center(
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: AppColor.secondaryColor),
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Home()));
                },
                child: Text(
                  "submit",
                  style: TextStyle(color: AppColor.primeColor, fontSize: 25.sp),
                )),
          )
        ],
      ),
    );
  }
}
