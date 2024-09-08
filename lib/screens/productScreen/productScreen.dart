import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_shopping/model/productModel.dart';
import 'package:online_shopping/screens/productScreen/productScreenWidget.dart';

// ignore: must_be_immutable
class ProductScreen extends StatefulWidget {
  Product product;
  ProductScreen({required this.product});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              productImg(context, widget.product.productImg1),
              SizedBox(
                height: 15.h,
              ),
              productImgs(widget.product.productImg1,
                  widget.product.productImg2, widget.product.productImg3),
              SizedBox(
                height: 20.h,
              ),
              productInfo(
                  widget.product.productName!,
                  widget.product.productPrice!,
                  widget.product.productOldPrice!),
            ],
          ),
        ),
      ),
      floatingActionButton: addToCart(),
    );
  }
}
