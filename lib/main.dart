import 'package:classy_ecom_desgn/models/sub_sub_products.dart';
import 'package:classy_ecom_desgn/models/prod_category.dart';
import 'package:classy_ecom_desgn/models/prod_sub_cat.dart';
import 'package:classy_ecom_desgn/screens/sub_sub_products.dart';
import 'package:classy_ecom_desgn/screens/category_screen.dart';
import 'package:classy_ecom_desgn/screens/sub_cat_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ProdCategoryModel()),
        ChangeNotifierProvider(create: (_) => ProdSubCatModel()),
        ChangeNotifierProvider(create: (_) => SubSubProductsModel()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
        ),
        home: CategoryScreen(),

        routes: {
          SubCatScreen.routeName: (context)=> SubCatScreen(),
          SubSubProductScreen.routeName: (context)=> SubSubProductScreen(),
        },
      ),
    );
  }
}


