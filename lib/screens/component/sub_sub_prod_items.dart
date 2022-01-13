import 'package:classy_ecom_desgn/models/sub_sub_products.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SubSubProductItems extends StatelessWidget {
  const SubSubProductItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final subSubProdData = Provider.of<SubSubProductsModel>(context);
    final subSubProducts = subSubProdData.items;

    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 2/3,
        crossAxisSpacing: 20,
        mainAxisSpacing: 40,
      ),
      itemBuilder: (ctx, i)=> Container(
        height: 600,
        child: Column(
          children: [
            Card(
              child: Column(
                children: [
                  Image.asset(subSubProducts[i].productImageUrl!,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        SizedBox(height: 10,),
                        Text(subSubProducts[i].productName!,
                          style: TextStyle(color: Colors.grey),
                        ),
                        SizedBox(height: 10,),
                        Text(subSubProducts[i].productPrice!)
                      ],
                    ),
                  )
                ],
              ),
            ),

            ElevatedButton(
                onPressed: (){},
                child: Text('Add to cart')
            )
          ],
        ),
      ),
      itemCount: subSubProducts.length,
    );
  }
}
