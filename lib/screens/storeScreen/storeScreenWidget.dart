import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_shopping/model/productModel.dart';
import 'package:online_shopping/screens/productScreen/productScreen.dart';
import 'package:online_shopping/theme/colors.dart';
import 'package:online_shopping/widgets/productWidget.dart';

Widget storeProduct(context, {required Future<List<Product>> product1}) {
  return Container(
    width: MediaQuery.sizeOf(context).width,
    height: 300.h,
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

Widget storeProduct1(context, {required Future<List<Product>> product1}) {
  return Container(
    width: MediaQuery.sizeOf(context).width,
    height: 200.h,
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
              itemCount: products.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, int index) {
                return Padding(
                    padding: EdgeInsets.all(8.0),
                    child: productWidget2(context, products[0]));
              });
        } else {
          return Center(child: Text('No products available.'));
        }
      },
    ),
  );
}

Widget productWidget2(context, Product product1) {
  return GestureDetector(
    onTap: () {
      Navigator.of(context).push(MaterialPageRoute(
          builder: (BuildContext context) => ProductScreen(
                product: product1,
              )));
    },
    child: Column(
      children: [
        CircleAvatar(
          backgroundColor: thirdColor,
          radius: 45.r,
          child: CircleAvatar(
            backgroundImage: NetworkImage(product1.productImg1!),
            radius: 40.r,
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        Text(
          product1.productName!,
          style: TextStyle(color: fourthColor, fontSize: 15.sp),
        ),
        SizedBox(
          height: 5.h,
        ),
        Text(
          product1.productPrice!.toString(),
          style: TextStyle(color: fourthColor, fontSize: 15.sp),
        )
      ],
    ),
  );
}
