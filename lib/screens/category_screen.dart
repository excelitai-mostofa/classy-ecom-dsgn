import 'package:classy_ecom_desgn/screens/component/category_screen_body.dart';
import 'package:classy_ecom_desgn/widgets/bottomNavBar.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {



  String dropdownvalue = 'Default';
  var items = [
    'Default',
    'Oldest',
    'Newest',
    'Price: low to high',
    'price: high to low',
    'Name: A to Z',
    'Name: Z to A',
    'Rating: low to high',
    'Rating: high to low'
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(


      appBar: AppBar(
        backgroundColor: Color(0xFFFFA800),
        leading: GestureDetector(
          onTap: (){},
          child: Icon(Icons.arrow_back_ios,color: Colors.black,),
        ),
        title: Center(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20,vertical: 3),
            decoration: BoxDecoration(
                color: Color(0xFFFF6000),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey,
                      blurRadius: 5,
                      offset: Offset(0, 3)
                  )
                ]
            ),
            child: Text('Fashion',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: (){},
            icon: Image.asset(
              "assets/icons/search_icon.png",
              fit: BoxFit.cover,
            ),
          ),
          IconButton(
            onPressed: (){},
            icon: Image.asset(
              "assets/icons/filter_icon.png",
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),



      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height*.05),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  SizedBox(width: 10,),
                  Expanded(
                    child: Text('Women',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Expanded(
                      child: Container(
                        height: 30,
                        padding: EdgeInsets.only(left: 10, right: 10),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(5)
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: IconButton(
                                  onPressed: (){},
                                  icon: Image.asset('assets/icons/dropDown_icon.png')
                              ),
                            ),
                            Expanded(
                              flex: 4,
                              child: DropdownButton(
                                isExpanded: true,
                                iconSize: 15,
                                underline: SizedBox(),
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.black
                                ),
                                value: dropdownvalue,
                                  icon: Icon(Icons.keyboard_arrow_down),
                                  items: items.map((String items){
                                    return DropdownMenuItem(
                                        child: Text(items),
                                      value: items,
                                    );
                                  }).toList(),
                                  onChanged: (String? newValue){
                                    setState(() {
                                      dropdownvalue = newValue!;
                                    });
                                  }
                              ),
                            ),
                          ],
                        ),
                      )
                  )
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height*.75,
              child: Padding(
                  padding: EdgeInsets.all(10),
                child: CategoryScreenBody(),
              ),
            ),


          ],
        ),
      ),





      bottomNavigationBar: BottomNav()

    );
  }
}
