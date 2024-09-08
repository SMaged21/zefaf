import 'package:online_shopping/firebase/firestore.dart';

class Product {
  String? productImg1;
  String? productImg2;
  String? productImg3;
  double? productPrice;
  double? productOldPrice;
  String? productDes;
  String? productName;
  String? productCategory;

  Product({
    this.productImg1,
    this.productImg2,
    this.productImg3,
    this.productPrice,
    this.productOldPrice,
    this.productCategory,
    this.productDes,
    this.productName,
  });

  // Factory constructor to create Product from Firestore document
  factory Product.fromFirestore(Map<String, dynamic> data) {
    return Product(
      productName: data['name'] ?? '', // Mapping product name
      productPrice: (data['price'] ?? 0).toDouble(), // Mapping product price
      productOldPrice: (data['oldprice'] ?? 0).toDouble(), // Old price
      productDes: data['des'] ?? '', // Description
      productCategory: data['category'] ?? '', // Category
      productImg1: data['img1'] ?? '', // Image 1
      productImg2: data['img2'] ?? '', // Image 2
      productImg3: data['img3'] ?? '', // Image 3
    );
  }
}

Future<List<Product>> Deals = FireStore.getProducts("Deals");
