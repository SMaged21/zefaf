import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'address.dart';
import 'theme.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: AppColor.secondaryColor,
          foregroundColor: AppColor.thirdColor,
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20.h,
            ),
            Container(
              width: MediaQuery.sizeOf(context).width,
              height: MediaQuery.sizeOf(context).height * (1 / 3),
              child: ListView.builder(
                  itemCount: 10,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListTile(
                        leading: Image(
                          image: AssetImage("images/download (1).jpeg"),
                        ),
                        title: Text(
                          "product Name",
                          style: TextStyle(fontSize: 20.sp),
                        ),
                        subtitle: Text("Price"),
                        trailing: Icon(Icons.clear),
                      ),
                    );
                  }),
            ),
            SizedBox(
              height: 20.h,
            ),
            Center(
              child: Container(
                color: AppColor.fourthColor,
                height: 5.h,
                width: 300.w,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              children: [
                SizedBox(
                  width: 15.w,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Total",
                      style: TextStyle(
                          color: AppColor.fourthColor, fontSize: 40.sp),
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    Text(
                      "Orders",
                      style: TextStyle(
                          color: AppColor.fourthColor, fontSize: 40.sp),
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    Text(
                      "Total Price",
                      style: TextStyle(
                          color: AppColor.fourthColor, fontSize: 40.sp),
                    ),
                  ],
                ),
                SizedBox(
                  width: 80.w,
                ),
                Column(
                  children: [
                    Text(
                      "0",
                      style: TextStyle(
                          color: AppColor.fourthColor, fontSize: 40.sp),
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    Text(
                      "0",
                      style: TextStyle(
                          color: AppColor.fourthColor, fontSize: 40.sp),
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    Text(
                      "0",
                      style: TextStyle(
                          color: AppColor.fourthColor, fontSize: 40.sp),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 5.h,
            ),
            Center(
              child: Container(
                color: AppColor.fourthColor,
                height: 4.h,
                width: 250.w,
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            Row(
              children: [
                SizedBox(
                  width: 44.w,
                ),
                Text(
                  "Cancel",
                  style:
                      TextStyle(color: AppColor.fourthColor, fontSize: 30.sp),
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.clear,
                      size: 35,
                      color: AppColor.fourthColor,
                    )),
                Container(
                  color: AppColor.fourthColor,
                  height: 35.h,
                  width: 2.w,
                ),
                SizedBox(
                  width: 4.w,
                ),
                Text(
                  "save",
                  style:
                      TextStyle(color: AppColor.fourthColor, fontSize: 30.sp),
                ),
                IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => addressScreen()));
                    },
                    icon: Icon(
                      Icons.save,
                      size: 35,
                      color: AppColor.fourthColor,
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
