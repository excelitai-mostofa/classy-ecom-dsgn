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
        crossAxisSpacing: 10,
        mainAxisSpacing: 20,
        mainAxisExtent: 300
      ),
      itemBuilder: (ctx, i)=> Column(
        children: [
          Container(
            height: 250,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 3,
                  offset: Offset(0, 2), // changes position of shadow
                ),
              ],
            ),
            child: Stack(
              children: [
                Image.asset(subSubProducts[i].productImageUrl!,),
                Positioned(
                  right: 5,
                  bottom: 60,
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 3,
                          offset: Offset(0, 2),
                        )
                      ]
                    ),
                    child: CircleAvatar(
                      radius: 15,
                      child: Icon(Icons.shopping_bag_outlined,
                        size: 18,
                        color: Colors.orange,
                      ),
                      backgroundColor: Colors.white,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Text(subSubProducts[i].productName!,
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Text(subSubProducts[i].productPrice!),
                      ),
                      SizedBox(height: 10,),
                    ],
                  ),
                )
              ],
            ),
          ),

          SizedBox(height: 15,),
          Container(
            width: 140,
            height: 30,
            child: ElevatedButton(
                onPressed: (){},
                child: Text('Add to cart'),
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                onPrimary: Colors.orange,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                side: BorderSide(width: 1, color: Colors.orange)
              ),
            ),
          )
        ],
      ),
      itemCount: subSubProducts.length,
    );
  }
}
