import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:online_shopping/Model/category.dart';
import 'package:online_shopping/theme.dart';

class categoryWidget extends StatefulWidget {
  category? cat;
  categoryWidget({super.key, required this.cat});
  @override
  State<categoryWidget> createState() => _categoryWidgetState();
}

class _categoryWidgetState extends State<categoryWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 200,
        height: 300,
        child: Column(
          children: [
            Container(
              width: 130.w,
              height: 130.h,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(widget.cat!.img!),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              widget.cat!.name!,
              style: GoogleFonts.lato(
                  color: AppColor.fourthColor, fontSize: 20.sp),
            ),
          ],
        ),
      ),
    );
  }
}
