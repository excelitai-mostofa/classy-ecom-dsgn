import 'package:flutter/cupertino.dart';

class SubSubProductsModel with ChangeNotifier{
  String? productName;
  String? productImageUrl;
  String? productPrice;

  SubSubProductsModel({this.productName,this.productImageUrl,this.productPrice});

  static List<SubSubProductsModel> subSubProductData=[
    SubSubProductsModel(
        productName: "Selwar kameez",
        productImageUrl: "assets/women_images/salwar_kameez.png",
        productPrice: "\$ 110"
    ),
    SubSubProductsModel(
        productName: "Sharee",
        productImageUrl: "assets/women_images/salwar_kameez.png",
        productPrice: "\$ 200"
    ),
    SubSubProductsModel(
        productName: "Lehenga",
        productImageUrl: "assets/women_images/salwar_kameez.png",
        productPrice: "\$ 300"
    ),
    SubSubProductsModel(
        productName: "Kaftan",
        productImageUrl: "assets/women_images/salwar_kameez.png",
        productPrice: "\$ 150"
    ),
    SubSubProductsModel(
        productName: "Kurtis",
        productImageUrl: "assets/women_images/salwar_kameez.png",
        productPrice: "\$ 199"
    ),
    SubSubProductsModel(
        productName: "Burqa",
        productImageUrl: "assets/women_images/salwar_kameez.png",
        productPrice: "\$ 150"
    ),
    SubSubProductsModel(
        productName: "Shoes",
        productImageUrl: "assets/women_images/salwar_kameez.png",
        productPrice: "\$ 100"
    ),
  ];


  List<SubSubProductsModel> get items{
    return [...subSubProductData];
  }


}