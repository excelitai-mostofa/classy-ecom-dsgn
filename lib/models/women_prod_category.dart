import 'package:flutter/cupertino.dart';

class WomenProdCategoryModel with ChangeNotifier{
  String? categoryName;
  String? imageUrl;

  WomenProdCategoryModel({this.categoryName,this.imageUrl});

  static List<WomenProdCategoryModel> prodCatData=[
    WomenProdCategoryModel(
      categoryName: "Selwar kameez",
      imageUrl: "assets/women_images/salwar_kameez.png",
    ),
    WomenProdCategoryModel(
      categoryName: "Sharee",
      imageUrl: "assets/women_images/salwar_kameez.png",
    ),
    WomenProdCategoryModel(
      categoryName: "Lehenga",
      imageUrl: "assets/women_images/salwar_kameez.png",
    ),
    WomenProdCategoryModel(
      categoryName: "Kaftan",
      imageUrl: "assets/women_images/salwar_kameez.png",
    ),
    WomenProdCategoryModel(
      categoryName: "Kurtis",
      imageUrl: "assets/women_images/salwar_kameez.png",
    ),
    WomenProdCategoryModel(
      categoryName: "Burqa",
      imageUrl: "assets/women_images/salwar_kameez.png",
    ),
  ];

  List<WomenProdCategoryModel> get items{
    return [...prodCatData];
  }

}