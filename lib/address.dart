import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Home.dart';
import 'theme.dart';

class addressScreen extends StatefulWidget {
  const addressScreen({super.key});

  @override
  State<addressScreen> createState() => _addressScreenState();
}

class _addressScreenState extends State<addressScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            size: 50,
          ),
        ),
        title: Text(
          "Add Address",
          style: TextStyle(fontSize: 35.sp),
        ),
        centerTitle: true,
        foregroundColor: AppColor.primeColor,
        backgroundColor: AppColor.secondaryColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20.h,
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
                    labelText: "city",
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
                      Icons.location_city,
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
                    labelText: "address",
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
                      Icons.home,
                      color: AppColor.secondaryColor,
                    )),
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Center(
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: AppColor.secondaryColor),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Home()));
                  },
                  child: Text(
                    "submit",
                    style:
                        TextStyle(color: AppColor.primeColor, fontSize: 25.sp),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
