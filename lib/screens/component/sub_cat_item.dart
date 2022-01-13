import 'package:classy_ecom_desgn/models/women_prod_sub_cat.dart';
import 'package:classy_ecom_desgn/screens/sub_sub_products.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class SubCategoryBody extends StatelessWidget {
  const SubCategoryBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final subCatData = Provider.of<WomenProdSubCatModel>(context);
    final subCategories = subCatData.items;


    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 2/3,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        itemBuilder: (ctx, i)=> Card(
          child: Container(
            child: GestureDetector(
              onTap: (){
                Navigator.of(context).pushNamed(
                    SubSubProductScreen.routeName
                );
              },
              child: Column(
                children: [
                  Image.asset(subCategories[i].imageUrl!),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(subCategories[i].categoryName!),
                  )
                ],
              ),
            ),
          ),
        ),
      itemCount: subCategories.length,
    );
  }
}
