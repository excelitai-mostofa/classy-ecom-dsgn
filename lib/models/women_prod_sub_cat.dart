import 'package:flutter/cupertino.dart';

class WomenProdSubCatModel with ChangeNotifier{
  String? categoryName;
  String? imageUrl;

  WomenProdSubCatModel({this.categoryName,this.imageUrl});

  static List<WomenProdSubCatModel> prodSubCatData=[
    WomenProdSubCatModel(
      categoryName: "Long kameez",
      imageUrl: "assets/women_images/salwar_kameez.png",
    ),
    WomenProdSubCatModel(
      categoryName: "Short kameez",
      imageUrl: "assets/women_images/salwar_kameez.png",
    ),
    WomenProdSubCatModel(
      categoryName: "Stritched",
      imageUrl: "assets/women_images/salwar_kameez.png",
    ),
    WomenProdSubCatModel(
      categoryName: "UnStritched",
      imageUrl: "assets/women_images/salwar_kameez.png",
    ),
  ];


  List<WomenProdSubCatModel> get items{
    return [...prodSubCatData];
  }




}