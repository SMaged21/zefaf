import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_shopping/Model/Product.dart';
import 'package:online_shopping/theme.dart';

// ignore: must_be_immutable
class ProductScreen extends StatefulWidget {
  Product product;
  ProductScreen({super.key, required this.product});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  int count = 0;
  String? backImg;

  @override
  void initState() {
    super.initState();
    backImg = widget.product.productImg1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: MediaQuery.sizeOf(context).width,
            height: 320.h,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(backImg!), fit: BoxFit.cover),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
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
                        color: AppColor.primeColor,
                      )),
                )
              ],
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          Row(
            children: [
              SizedBox(
                width: 30.w,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    backImg = widget.product.productImg1;
                  });
                },
                child: Container(
                    height: 80.h,
                    width: 80.w,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(widget.product.productImg1!),
                          fit: BoxFit.cover),
                    )),
              ),
              SizedBox(
                width: 30.w,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    backImg = widget.product.productImg2;
                  });
                },
                child: Container(
                    height: 80.h,
                    width: 80.w,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(widget.product.productImg2!),
                          fit: BoxFit.cover),
                    )),
              ),
              SizedBox(
                width: 30.w,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    backImg = widget.product.productImg3;
                  });
                },
                child: Container(
                    height: 80.h,
                    width: 80.w,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(widget.product.productImg3!),
                          fit: BoxFit.cover),
                    )),
              ),
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          Text(
            "Wedding Dress",
            style: TextStyle(
                color: AppColor.fourthColor,
                fontSize: 45.sp,
                fontWeight: FontWeight.bold),
          ),
          Row(
            children: [
              Text(
                "200\$",
                style: TextStyle(
                    color: AppColor.fourthColor,
                    fontSize: 30.sp,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 10.w,
              ),
              Text(
                "250\$",
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
                color: AppColor.fourthColor,
                fontSize: 30.sp,
                fontWeight: FontWeight.bold),
          ),
          Container(
            height: 50.h,
            width: MediaQuery.sizeOf(context).width,
            child: ListView.builder(
                itemCount: 6,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 50.h,
                        width: 40.w,
                        color: AppColor.thirdColor,
                      ),
                    ),
                  );
                }),
          ),
          SizedBox(
            height: 10.h,
          ),
          Row(
            children: [
              CircleAvatar(
                radius: 25,
                backgroundColor: AppColor.primeColor,
                child: IconButton(
                    onPressed: () {
                      setState(() {
                        if (count > 0) {
                          count -= 1;
                        }
                      });
                    },
                    icon: Icon(
                      CupertinoIcons.minus,
                      size: 25,
                      color: AppColor.fourthColor,
                    )),
              ),
              SizedBox(
                width: 4.w,
              ),
              Text(
                "${count}",
                style: TextStyle(fontSize: 30.sp, color: AppColor.fourthColor),
              ),
              SizedBox(
                width: 4.w,
              ),
              CircleAvatar(
                radius: 25,
                backgroundColor: AppColor.primeColor,
                child: IconButton(
                    onPressed: () {
                      setState(() {
                        count += 1;
                      });
                    },
                    icon: Icon(
                      CupertinoIcons.plus,
                      size: 25,
                      color: AppColor.fourthColor,
                    )),
              ),
              SizedBox(
                width: 25.w,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Add to Cart",
                  style: TextStyle(fontSize: 35.sp, color: AppColor.primeColor),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColor.secondaryColor,
                  shape: BeveledRectangleBorder(side: BorderSide.none),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
