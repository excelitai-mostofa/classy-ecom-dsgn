import 'package:flutter/cupertino.dart';

class ProdCategoryModel with ChangeNotifier{
  String? categoryName;
  String? imageUrl;
  int? index;

  ProdCategoryModel({this.categoryName,this.imageUrl, this.index});

  static List<ProdCategoryModel> prodCatData=[
    ProdCategoryModel(
      categoryName: "Selwar kameez",
      imageUrl: "assets/women_images/salwar_kameez.png",
      index: 0
    ),
    ProdCategoryModel(
      categoryName: "Sharee",
      imageUrl: "assets/women_images/salwar_kameez.png",
      index: 1
    ),
    ProdCategoryModel(
      categoryName: "Lehenga",
      imageUrl: "assets/women_images/salwar_kameez.png",
      index: 2
    ),
    ProdCategoryModel(
      categoryName: "Kaftan",
      imageUrl: "assets/women_images/salwar_kameez.png",
      index: 3
    ),
    ProdCategoryModel(
      categoryName: "Kurtis",
      imageUrl: "assets/women_images/salwar_kameez.png",
      index: 4
    ),
    ProdCategoryModel(
      categoryName: "Burqa",
      imageUrl: "assets/women_images/salwar_kameez.png",
      index: 5
    ),
    ProdCategoryModel(
      categoryName: "Shoes",
      imageUrl: "assets/women_images/salwar_kameez.png",
      index: 6
    ),
  ];


  List<ProdCategoryModel> get items{
    return [...prodCatData];
  }




}