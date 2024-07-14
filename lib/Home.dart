import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:online_shopping/product.dart';

import 'cart.dart';
import 'categories.dart';
import 'profile.dart';
import 'store.dart';
import 'theme.dart';
import 'welecome.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        width: 200.w,
        child: Column(
          children: [
            Container(
              width: 200.w,
              height: 300.h,
              color: AppColor.secondaryColor,
              child: Column(
                children: [
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.person,
                        color: AppColor.fourthColor,
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => profileScreen()));
                          },
                          child: Text(
                            "profile",
                            style: TextStyle(color: AppColor.fourthColor),
                          )),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.category,
                        color: AppColor.fourthColor,
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CategoriesScreen()));
                          },
                          child: Text(
                            "Categories",
                            style: TextStyle(color: AppColor.fourthColor),
                          )),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.logout,
                        color: AppColor.fourthColor,
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => WelecomeScreen()));
                          },
                          child: Text(
                            "LogOut",
                            style: TextStyle(color: AppColor.fourthColor),
                          )),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: AppColor.secondaryColor,
        foregroundColor: AppColor.primeColor,
        title: Row(
          children: [
            SizedBox(
              width: 80.w,
            ),
            Text(
              "Zefaf",
              style: GoogleFonts.bodoniModa(
                fontSize: 35.sp,
              ),
            ),
            SizedBox(
              width: 25.w,
            ),
            IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => StoreScreen()));
                },
                icon: Icon(
                  Icons.search,
                  size: 30.sp,
                )),
            SizedBox(
              width: 1.w,
            ),
            IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CartScreen()));
                },
                icon: Icon(
                  Icons.shopping_cart,
                  size: 30.sp,
                ))
          ],
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              width: 400.h,
              height: 240.h, // Replace with 220.h if using flutter_screenutil
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/headband.jpeg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              children: [
                SizedBox(
                  width: 10.w,
                ),
                Text(
                  "Deals",
                  style: GoogleFonts.lato(
                      color: AppColor.fourthColor, fontSize: 40.sp),
                )
              ],
            ),
            SizedBox(
              height: 5.sp,
            ),
            Container(
              width: MediaQuery.sizeOf(context).width,
              height: 250.h,
              child: ListView.builder(
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, int index) {
                  return Padding(
                    padding: EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProductScreen()));
                      },
                      child: Container(
                        width: 150.w,
                        color: AppColor.primeColor,
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("images/back.jpeg"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              width: 120.w,
                              height: 100.h,
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "Product\n Name",
                              style: GoogleFonts.lato(
                                  color: AppColor.fourthColor, fontSize: 20.sp),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "200\$",
                              style: GoogleFonts.lato(
                                  color: AppColor.fourthColor, fontSize: 20.sp),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              children: [
                SizedBox(
                  width: 10.w,
                ),
                Text(
                  "Most saled",
                  style: GoogleFonts.lato(
                      color: AppColor.fourthColor, fontSize: 40.sp),
                )
              ],
            ),
            SizedBox(
              height: 5.sp,
            ),
            Container(
              width: MediaQuery.sizeOf(context).width,
              height: 250.h,
              child: ListView.builder(
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, int index) {
                  return Padding(
                    padding: EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProductScreen()));
                      },
                      child: Container(
                        width: 150.w,
                        color: AppColor.primeColor,
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("images/back.jpeg"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              width: 120.w,
                              height: 100.h,
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "Product\n Name",
                              style: GoogleFonts.lato(
                                  color: AppColor.fourthColor, fontSize: 20.sp),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "200\$",
                              style: GoogleFonts.lato(
                                  color: AppColor.fourthColor, fontSize: 20.sp),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
