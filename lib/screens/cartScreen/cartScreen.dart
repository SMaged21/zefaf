import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_shopping/screens/cartScreen/cartScreenWidget.dart';
import 'package:online_shopping/theme/colors.dart';

class Cartscreen extends StatefulWidget {
  const Cartscreen({super.key});

  @override
  State<Cartscreen> createState() => _CartscreenState();
}

class _CartscreenState extends State<Cartscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: secondaryColor,
          foregroundColor: thirdColor,
          centerTitle: true,
          title: Text(
            "Cart",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 50.sp,
            ),
          ),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              size: 40,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          )),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20.h,
              ),
              cartProducts(context),
              SizedBox(
                height: 20.h,
              ),
              Divider(),
              tPrice(),
              Divider(),
              saveOrder(context)
            ],
          ),
        ),
      ),
    );
  }
}
