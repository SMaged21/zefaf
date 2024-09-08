import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_shopping/model/productModel.dart';
import 'package:online_shopping/screens/storeScreen/storeScreenWidget.dart';
import 'package:online_shopping/theme/colors.dart';

class Storescreen extends StatefulWidget {
  const Storescreen({super.key});

  @override
  State<Storescreen> createState() => _StorescreenState();
}

class _StorescreenState extends State<Storescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: secondaryColor,
        foregroundColor: primeColor,
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
          "Zefaf Store",
          style: TextStyle(fontSize: 40.sp),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20.h,
              ),
              storeProduct(
                context,
                product1: Deals,
              ),
              storeProduct1(
                context,
                product1: Deals,
              ),
              storeProduct(
                context,
                product1: Deals,
              ),
              storeProduct1(context, product1: Deals)
            ],
          ),
        ),
      ),
    );
  }
}
