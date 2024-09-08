import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:online_shopping/theme/colors.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({super.key});

  @override
  State<CategoriesScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<CategoriesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: secondaryColor,
        foregroundColor: primeColor,
        title: Center(
          child: Text(
            "Categories",
            style: GoogleFonts.lato(
              fontSize: 40.sp,
            ),
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            size: 50,
          ),
        ),
      ),
      body: Expanded(
        child: ListView.builder(
          itemCount: 10,
          scrollDirection: Axis.vertical,
          itemBuilder: (context, int index) {
            return Padding(
              padding: EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  height: 100.h,
                  color: primeColor,
                  child: Row(
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
                        width: 30.w,
                      ),
                      Text(
                        "Product Name\n       200\$",
                        style: GoogleFonts.lato(
                            color: fourthColor, fontSize: 20.sp),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
