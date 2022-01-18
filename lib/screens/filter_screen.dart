import 'package:classy_ecom_desgn/models/checkbox_state.dart';
import 'package:flutter/material.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({Key? key}) : super(key: key);

  static const routeName = '/filter-page';

  @override
  _FilterScreenState createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  
  final categories = [
    CatCheckBoxState(title: 'Jacket'),
    CatCheckBoxState(title: 'Electronics'),
    CatCheckBoxState(title: 'Fashion'),
    CatCheckBoxState(title: 'Bike'),
    CatCheckBoxState(title: 'Food'),
    CatCheckBoxState(title: 'Men'),
    CatCheckBoxState(title: 'Women'),
  ];

  final brands = [
    BrandCheckBoxState(title: 'Arong'),
    BrandCheckBoxState(title: 'Kay Kraft'),
    BrandCheckBoxState(title: 'Taga'),
    BrandCheckBoxState(title: 'Gentle Park'),
    BrandCheckBoxState(title: 'Onjons'),
    BrandCheckBoxState(title: 'Dorjibari'),
    BrandCheckBoxState(title: 'Yellow'),
  ];

  final tags = [
    TagCheckBoxState(title: 'Sharee'),
    TagCheckBoxState(title: 'Kameez'),
    TagCheckBoxState(title: 'Handbag'),
    TagCheckBoxState(title: 'Shoes'),
    TagCheckBoxState(title: 'Shirts'),
    TagCheckBoxState(title: 'Watch'),
    TagCheckBoxState(title: 'Jeans'),
  ];


  final sizes = [
    SizeCheckBoxState(title: '32'),
    SizeCheckBoxState(title: '34'),
    SizeCheckBoxState(title: '36'),
    SizeCheckBoxState(title: '38'),
    SizeCheckBoxState(title: '40'),
    SizeCheckBoxState(title: '42'),
    SizeCheckBoxState(title: '44'),
  ];


  RangeValues values = RangeValues(1500, 25000);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back_ios,color: Colors.black,),
        ),


        title: Container(
          height: 19,
          width: 80,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.grey,
              width: .5
            ),
            borderRadius: BorderRadius.circular(10)
          ),
          child: Center(
            child: Text('Filters',
              style: TextStyle(
                color: Colors.black,
                fontSize: 14
              ),
            ),
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,


      ),
      
      
      
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: AlwaysScrollableScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                    width: .5
                  ),
                  borderRadius: BorderRadius.circular(7)
                ),
                child: Column(
                  children: [



                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Container(
                            height: 300,
                            child: ListView(
                              physics: NeverScrollableScrollPhysics(),
                              itemExtent: 35,
                              padding: EdgeInsets.all(10),
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Text('By Categories',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      fontSize: 16
                                    ),
                                  ),
                                ),
                                ...categories.map(categorySingleCheckBox).toList(),


                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 300,
                            child: ListView(
                              physics: NeverScrollableScrollPhysics(),
                              itemExtent: 35,
                              padding: EdgeInsets.all(10),
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Text('By Brands',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16
                                    ),
                                  ),
                                ),
                                ...brands.map(brandSingleCheckBox).toList(),

                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 30,),
                    Row(
                      children: [
                        Expanded(
                            child:Container(
                              height: 300,
                              child: ListView(
                                padding: EdgeInsets.all(10),
                                physics: NeverScrollableScrollPhysics(),
                                itemExtent: 35,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Text('By Tags',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16
                                      ),
                                    ),
                                  ),
                                  ...tags.map(tagSingleCheckBox).toList(),
                                ],
                              ),
                            )
                        ),
                        Expanded(
                            child: Container(
                              height: 300,
                              child: ListView(
                                padding: EdgeInsets.all(10),
                                physics: NeverScrollableScrollPhysics(),
                                itemExtent: 35,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Text('By Size',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16
                                      ),
                                    ),
                                  ),
                                  ...sizes.map(sizeSingleCheckBox).toList(),
                                ],
                              ),
                            )
                        )
                      ],
                    ),




                    SizedBox(height: 20,),


                    Container(
                      height: 120,
                      child: Column(
                        children: [
                          Text('By Price',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 20),
                              child: RangeSlider(
                                activeColor: Color(0xFFFF6000),
                                inactiveColor: Colors.black,
                                min: 1500,
                                  max: 25000,
                                  values: values,
                                  onChanged: (value){
                                  setState(() {
                                    values = value;
                                  });
                                  },
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 50),
                                  child: Container(
                                    height: 30,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFFF6000),
                                      borderRadius: BorderRadius.circular(7)
                                    ),
                                    child: Center(
                                        child: Text(
                                            values.start.toStringAsFixed(0),
                                          style: TextStyle(
                                            color: Colors.white
                                          ),
                                        )
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 50),
                                  child: Container(
                                    height: 30,
                                    decoration: BoxDecoration(
                                        color: Color(0xFFFF6000),
                                        borderRadius: BorderRadius.circular(7)
                                    ),
                                    child: Center(
                                        child: Text(
                                            values.end.toStringAsFixed(0),
                                          style: TextStyle(
                                              color: Colors.white
                                          ),
                                        )
                                    ),
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    )



                  ],
                ),
              ),
              SizedBox(height: 20,),



              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: ElevatedButton(
                        onPressed: (){},
                        child: Text('Apply Filters'),
                        style: ElevatedButton.styleFrom(
                            primary: Color(0xFFFF6000),
                            onPrimary: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            side: BorderSide(width: 1, color: Color(0xFFFF6000))
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: ElevatedButton(
                        onPressed: (){},
                        child: Text('Clear All'),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            onPrimary: Color(0xFFFF6000),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            side: BorderSide(width: 1, color: Color(0xFFFF6000))
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              //SizedBox(height: 20,)


            ],
          ),
        ),
      ),
    );
  }

  Widget categorySingleCheckBox(CatCheckBoxState category){
    return CheckboxListTile(
      activeColor: Color(0xFFFF6000),
        controlAffinity: ListTileControlAffinity.leading,
        title: Text(category.title,
          style: TextStyle(
            color: Colors.grey
          ),
        ),
        value: category.value,
        onChanged: (value)=> setState(() {
          category.value = value!;
        })
    );
  }


  Widget brandSingleCheckBox(BrandCheckBoxState brand){
    return CheckboxListTile(
      activeColor: Color(0xFFFF6000),
        controlAffinity: ListTileControlAffinity.leading,
        title: Text(brand.title,
          style: TextStyle(
              color: Colors.grey
          ),
        ),
        value: brand.value,
        onChanged: (value)=> setState(() {
          brand.value = value!;
        })
    );
  }


  Widget tagSingleCheckBox(TagCheckBoxState tag){
    return CheckboxListTile(
      activeColor: Color(0xFFFF6000),
        controlAffinity: ListTileControlAffinity.leading,
        title: Text(tag.title,
          style: TextStyle(
              color: Colors.grey
          ),
        ),
        value: tag.value,
        onChanged: (value)=> setState(() {
          tag.value = value!;
        })
    );
  }


  Widget sizeSingleCheckBox(SizeCheckBoxState size){
    return CheckboxListTile(
      activeColor: Color(0xFFFF6000),
        controlAffinity: ListTileControlAffinity.leading,
        title: Text(size.title,
          style: TextStyle(
              color: Colors.grey
          ),
        ),
        value: size.value,
        onChanged: (value)=> setState(() {
          size.value = value!;
        })
    );
  }
}
