import 'package:classy_ecom_desgn/models/prod_category.dart';
import 'package:classy_ecom_desgn/screens/sub_cat_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class CategoryScreenBody extends StatelessWidget {
  const CategoryScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final categoryData = Provider.of<ProdCategoryModel>(context);
    final categories = categoryData.items;

    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 2/3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        mainAxisExtent: 230
      ),
      itemBuilder: (ctx,i) => Container(
        child: GestureDetector(
          onTap: (){
            Navigator.of(context).pushNamed(
              SubCatScreen.routeName, arguments: categories[i].categoryName
            );
          },
          child: Column(
            children: [
              Image.asset(categories[i].imageUrl!),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(categories[i].categoryName!),
              )
            ],
          ),
        ),
      ),
      itemCount: categories.length,
    );
  }
}
