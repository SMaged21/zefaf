import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'profileEditScreen.dart';
import 'theme.dart';

class profileScreen extends StatefulWidget {
  const profileScreen({super.key});

  @override
  State<profileScreen> createState() => _profileScreenState();
}

class _profileScreenState extends State<profileScreen> {
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
              IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProfileEditScreen()));
                  },
                  icon: Icon(
                    Icons.edit,
                    size: 50,
                    color: AppColor.secondaryColor,
                  )),
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
          Center(
            child: Text(
              "Full Name",
              style: TextStyle(
                  color: AppColor.fourthColor,
                  fontSize: 40.sp,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Center(
            child: Text(
              "phone number",
              style: TextStyle(color: AppColor.fourthColor, fontSize: 20.sp),
            ),
          ),
          SizedBox(
            height: 130.h,
          ),
          Container(
            width: MediaQuery.sizeOf(context).width,
            height: 180.h,
            color: AppColor.secondaryColor,
            child: Row(
              children: [
                SizedBox(
                  width: 20.w,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "21",
                      style: TextStyle(
                          color: AppColor.primeColor,
                          fontSize: 40.sp,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      "Age",
                      style: TextStyle(
                          color: AppColor.primeColor, fontSize: 30.sp),
                    ),
                  ],
                ),
                SizedBox(
                  width: 20.w,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "5",
                      style: TextStyle(
                          color: AppColor.primeColor,
                          fontSize: 40.sp,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      "Orders",
                      style: TextStyle(
                          color: AppColor.primeColor, fontSize: 30.sp),
                    ),
                  ],
                ),
                SizedBox(
                  width: 20.w,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "1800\$",
                      style: TextStyle(
                          color: AppColor.primeColor,
                          fontSize: 40.sp,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      "Total price",
                      style: TextStyle(
                          color: AppColor.primeColor, fontSize: 30.sp),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
