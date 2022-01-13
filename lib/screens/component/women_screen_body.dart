import 'package:classy_ecom_desgn/models/women_prod_category.dart';
import 'package:classy_ecom_desgn/screens/women_sub_cat_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class WomenScreenBody extends StatelessWidget {
  const WomenScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final productData = Provider.of<WomenProdCategoryModel>(context);
    final products = productData.items;

    return GridView.builder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      physics: ScrollPhysics(),
      padding: EdgeInsets.all(10),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 2/3,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
      itemBuilder: (ctx,i) => Card(
        child: Container(
          child: GestureDetector(
            onTap: (){
              Navigator.of(context).pushNamed(
                WomenSubCatScreen.routeName
              );
            },
            child: Column(
              children: [
                Image.asset(products[i].imageUrl!),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(products[i].categoryName!),
                )
              ],
            ),
          ),
        ),
      ),
      itemCount: products.length,
    );
  }
}
