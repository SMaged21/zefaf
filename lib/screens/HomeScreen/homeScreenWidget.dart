import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:online_shopping/SplachScreen.dart';
import 'package:online_shopping/firebase/auth.dart';
import 'package:online_shopping/model/category.dart';
import 'package:online_shopping/model/productModel.dart';
import 'package:online_shopping/screens/profileScreen/profileScreen.dart';
import 'package:online_shopping/theme/colors.dart';
import 'package:online_shopping/widgets/productWidget.dart';

Widget drawer(context) {
  return Drawer(
    width: 200.w,
    child: Column(
      children: [
        Container(
            width: 200.w,
            height: 300.h,
            color: secondaryColor,
            child: Column(
              children: [
                SizedBox(
                  height: 50.h,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.person,
                      color: fourthColor,
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  Profilescreen()));
                        },
                        child: Text(
                          "profile",
                          style: TextStyle(color: fourthColor),
                        )),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.logout,
                      color: fourthColor,
                    ),
                    TextButton(
                        onPressed: () {
                          GoogleSignIn googleUser = GoogleSignIn();
                          googleUser.disconnect();
                          Authen.auth.signOut();
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      splashScreen()));
                        },
                        child: Text(
                          "LogOut",
                          style: TextStyle(color: fourthColor),
                        )),
                  ],
                )
              ],
            ))
      ],
    ),
  );
}

Widget backGround() {
  return Container(
    width: 400.h,
    height: 240.h, // Replace with 220.h if using flutter_screenutil
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage("appImage/headband.jpeg"),
        fit: BoxFit.cover,
      ),
    ),
  );
}

Widget Categories(context) {
  return Container(
    width: MediaQuery.sizeOf(context).width,
    height: 300.h,
    child: GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 4,
      ),
      itemCount: categoryList.length,
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) {
        return categoryWidget(
          cat: categoryList[index],
        );
      },
    ),
  );
}

Widget categoryWidget({required category cat}) {
  return GestureDetector(
    onTap: () {},
    child: Container(
      width: 200,
      height: 300,
      child: Column(
        children: [
          Container(
            width: 130.w,
            height: 130.h,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(cat.img!),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Text(
            cat.name!,
            style: TextStyle(color: fourthColor, fontSize: 20.sp),
          ),
        ],
      ),
    ),
  );
}

Widget products(BuildContext context,
    {required Future<List<Product>> product1}) {
  return Container(
    width: MediaQuery.of(context).size.width,
    height: 250.h,
    child: FutureBuilder<List<Product>>(
      future: product1,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator()); // Loading state
        } else if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}')); // Error state
        } else if (snapshot.hasData && snapshot.data != null) {
          final products = snapshot.data!;
          return ListView.builder(
            itemCount: products.length, // Use the actual number of products
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, int index) {
              return Padding(
                padding: EdgeInsets.all(8.0),
                child: productWidget(
                    context: context,
                    product: products[index]), // Access each product by index
              );
            },
          );
        } else {
          return Center(child: Text('No products available.'));
        }
      },
    ),
  );
}
