import 'package:classy_ecom_desgn/models/women_prod_category.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class WomenCatItem extends StatelessWidget {
  //const WomenCatItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final womenCat = Provider.of<WomenProdCategoryModel>(context);

    return GridTile(
        child: Image.asset(
            womenCat.imageUrl!,
          fit: BoxFit.cover,
        ),
      // footer: GridTileBar(
      //   title: Text(womenCat.categoryName!),
      // ),
    );
  }
}
