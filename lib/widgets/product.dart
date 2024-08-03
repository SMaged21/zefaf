import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:online_shopping/Model/Product.dart';
import 'package:online_shopping/product.dart';
import 'package:online_shopping/theme.dart';

class productWidget extends StatefulWidget {
  Product product;
  productWidget({super.key, required this.product});

  @override
  State<productWidget> createState() => _productWidgetState();
}

class _productWidgetState extends State<productWidget> {
  @override
  Widget build(BuildContext context) {
    String? img1 = widget.product.productImg1;
    String? img2 = widget.product.productImg2;
    String? img3 = widget.product.productImg3;
    String? name = widget.product.productName;
    double? price = widget.product.productPrice;
    double? oldPrice = widget.product.productOldPrice;
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ProductScreen(
                      product: Product(
                        productImg1: img1,
                        productImg2: img2,
                        productImg3: img3,
                        productOldPrice: oldPrice,
                        productPrice: price,
                        productName: name,
                      ),
                    )));
      },
      child: Container(
        width: 150.w,
        // height: 150.h,
        color: AppColor.primeColor,
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(img1!),
                  fit: BoxFit.cover,
                ),
              ),
              width: 130.w,
              height: 130.h,
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              name!,
              style: GoogleFonts.lato(
                  color: AppColor.fourthColor, fontSize: 20.sp),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              price!.toString() + "\$",
              style: GoogleFonts.lato(
                  color: AppColor.fourthColor, fontSize: 20.sp),
            )
          ],
        ),
      ),
    );
  }
}
