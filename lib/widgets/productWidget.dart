import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_shopping/model/productModel.dart';
import 'package:online_shopping/screens/productScreen/productScreen.dart';
import 'package:online_shopping/theme/colors.dart';

Widget productWidget({required context, required Product product}) {
  return GestureDetector(
    onTap: () {
      Navigator.of(context).push(MaterialPageRoute(
          builder: (BuildContext context) => ProductScreen(
                product: product,
              )));
    },
    child: Container(
      width: 150.w,
      color: primeColor,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(product.productImg1!),
                fit: BoxFit.cover,
              ),
            ),
            width: 130.w,
            height: 130.h,
          ),
          SizedBox(
            height: 10.h,
          ),
          Text(
            product.productName!,
            style: TextStyle(color: fourthColor, fontSize: 20.sp),
          ),
          SizedBox(
            height: 10.h,
          ),
          Text(
            product.productPrice!.toString(),
            style: TextStyle(color: fourthColor, fontSize: 20.sp),
          )
        ],
      ),
    ),
  );
}
