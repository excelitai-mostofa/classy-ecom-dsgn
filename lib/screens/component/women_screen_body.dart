import 'package:classy_ecom_desgn/models/women_prod_category.dart';
import 'package:classy_ecom_desgn/widgets/women_cat_item.dart';
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
        crossAxisSpacing: 30,
        mainAxisSpacing: 30,
        //mainAxisExtent: 300,
      ),
      itemBuilder: (ctx,i) => Card(
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(width: 0, color: Colors.white)
          ),
          child: Column(
            children: [
              // ChangeNotifierProvider.value(
              //   value: products[i],
              //   child: WomenCatItem(),
              // ),
              Image.asset(products[i].imageUrl!),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(products[i].categoryName!),
              )
            ],
          ),
        ),
      ),
      itemCount: products.length,
    );
  }
}
