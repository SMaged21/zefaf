import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_shopping/screens/addressScreen/addressScreenWidget.dart';
import 'package:online_shopping/theme/colors.dart';

class Addressscreen extends StatefulWidget {
  const Addressscreen({super.key});

  @override
  State<Addressscreen> createState() => _AddressscreenState();
}

class _AddressscreenState extends State<Addressscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
          "User Address",
          style: TextStyle(fontSize: 35.sp),
        ),
        centerTitle: true,
        foregroundColor: primeColor,
        backgroundColor: secondaryColor,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20.h,
              ),
              screenFields(),
              submit(context),
            ],
          ),
        ),
      ),
    );
  }
}
