import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_shopping/screens/addressScreen/addressScreen.dart';
import 'package:online_shopping/theme/colors.dart';

Widget cartProducts(context) {
  return Container(
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
                image: AssetImage("accessories/download (1).jpeg"),
              ),
              title: Text(
                "product Name",
                style: TextStyle(fontSize: 20.sp),
              ),
              subtitle: Text("Price"),
              trailing: IconButton(onPressed: () {}, icon: Icon(Icons.clear)),
            ),
          );
        }),
  );
}

Widget tPrice() {
  return Row(
    children: [
      SizedBox(
        width: 15.w,
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Tax",
            style: TextStyle(color: fourthColor, fontSize: 40.sp),
          ),
          SizedBox(
            height: 3.h,
          ),
          Text(
            "Orders",
            style: TextStyle(color: fourthColor, fontSize: 40.sp),
          ),
          SizedBox(
            height: 3.h,
          ),
          Text(
            "Total Price",
            style: TextStyle(color: fourthColor, fontSize: 40.sp),
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
            style: TextStyle(color: fourthColor, fontSize: 40.sp),
          ),
          SizedBox(
            height: 3.h,
          ),
          Text(
            "0",
            style: TextStyle(color: fourthColor, fontSize: 40.sp),
          ),
          SizedBox(
            height: 3.h,
          ),
          Text(
            "0",
            style: TextStyle(color: fourthColor, fontSize: 40.sp),
          ),
        ],
      )
    ],
  );
}

Widget saveOrder(context) {
  return Row(
    children: [
      SizedBox(
        width: 44.w,
      ),
      Text(
        "Cancel",
        style: TextStyle(color: fourthColor, fontSize: 30.sp),
      ),
      IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.clear,
            size: 35,
            color: fourthColor,
          )),
      Container(
        color: fourthColor,
        height: 35.h,
        width: 2.w,
      ),
      SizedBox(
        width: 4.w,
      ),
      Text(
        "save",
        style: TextStyle(color: fourthColor, fontSize: 30.sp),
      ),
      IconButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) => Addressscreen()));
          },
          icon: Icon(
            Icons.save,
            size: 35,
            color: fourthColor,
          )),
    ],
  );
}
