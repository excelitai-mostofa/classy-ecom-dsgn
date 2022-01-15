import 'package:flutter/cupertino.dart';

class ProdSubCatModel with ChangeNotifier{
  String? categoryName;
  String? imageUrl;

  ProdSubCatModel({this.categoryName,this.imageUrl});

  static List<ProdSubCatModel> prodSubCatData=[
    ProdSubCatModel(
      categoryName: "Long kameez",
      imageUrl: "assets/women_images/salwar_kameez.png",
    ),
    ProdSubCatModel(
      categoryName: "Short kameez",
      imageUrl: "assets/women_images/salwar_kameez.png",
    ),
    ProdSubCatModel(
      categoryName: "Stritched",
      imageUrl: "assets/women_images/salwar_kameez.png",
    ),
    ProdSubCatModel(
      categoryName: "UnStritched",
      imageUrl: "assets/women_images/salwar_kameez.png",
    ),
  ];


  List<ProdSubCatModel> get items{
    return [...prodSubCatData];
  }




}