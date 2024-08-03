import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:online_shopping/Model/Product.dart';
import 'package:online_shopping/widgets/product.dart';

import 'theme.dart';

class StoreScreen extends StatefulWidget {
  const StoreScreen({super.key});

  @override
  State<StoreScreen> createState() => _StoreScreenState();
}

class _StoreScreenState extends State<StoreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.secondaryColor,
        foregroundColor: AppColor.primeColor,
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
          style: GoogleFonts.aBeeZee(fontSize: 40.sp),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(
              height: 20.h,
            ),
            Container(
              width: MediaQuery.sizeOf(context).width,
              height: 300.h,
              child: ListView.builder(
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, int index) {
                  return Padding(
                    padding: EdgeInsets.all(8.0),
                    child: productWidget(
                      product: Product(
                        productName: "Wedding dress",
                        productPrice: 400,
                        productImg1: "images/back.jpeg",
                        productImg2: "images/download (1).jpeg",
                        productImg3: "images/headband.jpeg",
                        productOldPrice: 300,
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              width: MediaQuery.sizeOf(context).width,
              height: 200.h,
              child: ListView.builder(
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, int index) {
                    return Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          CircleAvatar(
                            backgroundColor: AppColor.thirdColor,
                            radius: 45.r,
                            child: CircleAvatar(
                              backgroundImage:
                                  AssetImage("images/download (1).jpeg"),
                              radius: 40.r,
                            ),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Text(
                            "Product\n Name",
                            style: GoogleFonts.lato(
                                color: AppColor.fourthColor, fontSize: 15.sp),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Text(
                            "200\$",
                            style: GoogleFonts.lato(
                                color: AppColor.fourthColor, fontSize: 15.sp),
                          )
                        ],
                      ),
                    );
                  }),
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              width: MediaQuery.sizeOf(context).width,
              height: 300.h,
              child: ListView.builder(
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, int index) {
                  return Padding(
                    padding: EdgeInsets.all(8.0),
                    child: productWidget(
                      product: Product(
                        productName: "Wedding dress",
                        productPrice: 400,
                        productImg1: "images/back.jpeg",
                        productImg2: "images/download (1).jpeg",
                        productImg3: "images/headband.jpeg",
                        productOldPrice: 300,
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 5.h,
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
          ],
        ),
      ),
    );
  }
}
