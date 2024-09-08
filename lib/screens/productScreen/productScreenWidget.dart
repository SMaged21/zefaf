import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_shopping/theme/colors.dart';

Widget productImg(context, img) {
  return Container(
    width: MediaQuery.sizeOf(context).width,
    height: 320.h,
    decoration: BoxDecoration(
      image: DecorationImage(image: NetworkImage(img), fit: BoxFit.cover),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back,
                size: 50,
                color: primeColor,
              )),
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.favorite,
                size: 50,
                color: primeColor,
              )),
        )
      ],
    ),
  );
}

Widget productImgs(img1, img2, img3) {
  return Row(
    children: [
      SizedBox(
        width: 30.w,
      ),
      GestureDetector(
        onTap: () {},
        child: Container(
            height: 80.h,
            width: 80.w,
            decoration: BoxDecoration(
              image:
                  DecorationImage(image: NetworkImage(img1), fit: BoxFit.cover),
            )),
      ),
      SizedBox(
        width: 30.w,
      ),
      GestureDetector(
        onTap: () {},
        child: Container(
            height: 80.h,
            width: 80.w,
            decoration: BoxDecoration(
              image:
                  DecorationImage(image: NetworkImage(img2), fit: BoxFit.cover),
            )),
      ),
      SizedBox(
        width: 30.w,
      ),
      GestureDetector(
        onTap: () {},
        child: Container(
            height: 80.h,
            width: 80.w,
            decoration: BoxDecoration(
              image:
                  DecorationImage(image: NetworkImage(img3), fit: BoxFit.cover),
            )),
      ),
    ],
  );
}

Widget addToCart() {
  return Row(
    children: [
      CircleAvatar(
        radius: 25,
        backgroundColor: primeColor,
        child: IconButton(
            onPressed: () {},
            icon: Icon(
              CupertinoIcons.minus,
              size: 25,
              color: fourthColor,
            )),
      ),
      SizedBox(
        width: 4.w,
      ),
      Text(
        "0",
        style: TextStyle(fontSize: 30.sp, color: fourthColor),
      ),
      SizedBox(
        width: 4.w,
      ),
      CircleAvatar(
        radius: 25,
        backgroundColor: primeColor,
        child: IconButton(
            onPressed: () {},
            icon: Icon(
              CupertinoIcons.plus,
              size: 25,
              color: fourthColor,
            )),
      ),
      SizedBox(
        width: 25.w,
      ),
      ElevatedButton(
        onPressed: () {},
        child: Text(
          "Add to Cart",
          style: TextStyle(fontSize: 35.sp, color: primeColor),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: secondaryColor,
          shape: BeveledRectangleBorder(side: BorderSide.none),
        ),
      )
    ],
  );
}

Widget productInfo(String name, double price, oldprice) {
  return Container(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          name,
          style: TextStyle(
              color: fourthColor, fontSize: 45.sp, fontWeight: FontWeight.bold),
        ),
        Row(
          children: [
            Text(
              price.toString() + "\$",
              style: TextStyle(
                  color: fourthColor,
                  fontSize: 30.sp,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: 10.w,
            ),
            Text(
              oldprice.toString() + "\$",
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 30.sp,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Text(
          "Size",
          style: TextStyle(
              color: fourthColor, fontSize: 30.sp, fontWeight: FontWeight.bold),
        ),
      ],
    ),
  );
}
