import 'package:flutter/cupertino.dart';

class ProdCategoryModel with ChangeNotifier{
  String? categoryName;
  String? imageUrl;

  ProdCategoryModel({this.categoryName,this.imageUrl});

  static List<ProdCategoryModel> prodCatData=[
    ProdCategoryModel(
      categoryName: "Selwar kameez",
      imageUrl: "assets/women_images/salwar_kameez.png",
    ),
    ProdCategoryModel(
      categoryName: "Sharee",
      imageUrl: "assets/women_images/salwar_kameez.png",
    ),
    ProdCategoryModel(
      categoryName: "Lehenga",
      imageUrl: "assets/women_images/salwar_kameez.png",
    ),
    ProdCategoryModel(
      categoryName: "Kaftan",
      imageUrl: "assets/women_images/salwar_kameez.png",
    ),
    ProdCategoryModel(
      categoryName: "Kurtis",
      imageUrl: "assets/women_images/salwar_kameez.png",
    ),
    ProdCategoryModel(
      categoryName: "Burqa",
      imageUrl: "assets/women_images/salwar_kameez.png",
    ),
    ProdCategoryModel(
      categoryName: "Shoes",
      imageUrl: "assets/women_images/salwar_kameez.png",
    ),
  ];


  List<ProdCategoryModel> get items{
    return [...prodCatData];
  }




}