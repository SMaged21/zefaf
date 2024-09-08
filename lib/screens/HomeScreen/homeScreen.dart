import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_shopping/model/productModel.dart';
import 'package:online_shopping/screens/HomeScreen/homeScreenWidget.dart';
import 'package:online_shopping/screens/cartScreen/cartScreen.dart';
import 'package:online_shopping/screens/storeScreen/storeScreen.dart';
import 'package:online_shopping/theme/colors.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: drawer(context),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: secondaryColor,
        foregroundColor: primeColor,
        title: Text(
          "Zefaf",
          style: TextStyle(
            fontSize: 35.sp,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Storescreen()));
            },
            icon: Icon(
              Icons.store,
              size: 30.sp,
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Cartscreen()));
            },
            icon: Icon(
              Icons.shopping_cart,
              size: 30.sp,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              backGround(),
              SizedBox(
                height: 10.h,
              ),
              Categories(context),
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
                    style: TextStyle(color: fourthColor, fontSize: 40.sp),
                  )
                ],
              ),
              SizedBox(
                height: 5.sp,
              ),
              products(
                context,
                product1: Deals,
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
                    style: TextStyle(color: fourthColor, fontSize: 40.sp),
                  )
                ],
              ),
              SizedBox(
                height: 5.h,
              ),
              products(
                context,
                product1: Deals,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
