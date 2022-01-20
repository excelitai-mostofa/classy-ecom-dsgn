import 'package:classy_ecom_desgn/models/cdm.dart';
import 'package:flutter/material.dart';

class ComplexDrawerPage extends StatefulWidget {
  const ComplexDrawerPage({Key? key}) : super(key: key);

  @override
  _ComplexDrawerPageState createState() => _ComplexDrawerPageState();
}

class _ComplexDrawerPageState extends State<ComplexDrawerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Drawer Example')),
      ),

      drawer: ComplexDrawer(),
      //drawerScrimColor: Colors.transparent,

    );
  }
}



class ComplexDrawer extends StatefulWidget {
  const ComplexDrawer({Key? key}) : super(key: key);

  @override
  _ComplexDrawerState createState() => _ComplexDrawerState();
}

class _ComplexDrawerState extends State<ComplexDrawer> {
  int selectedIndex = -1;


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          blackIconTiles(),
        ],
      ),
    );
  }

  Widget blackIconTiles(){
    return Container(
      width: 220,
      color: Colors.white,
      child: Column(
        children: [

          topDrawer(),

          Expanded(
            child: ListView.builder(
              itemCount: cdms.length,
              itemBuilder: (BuildContext context, int index) {
              //  if(index==0) return controlTile();

                CDM cdm = cdms[index];
                bool selected = selectedIndex == index;
                return ExpansionTile(
                    onExpansionChanged:(z){
                      setState(() {
                        selectedIndex = z?index:-1;
                      });
                      },
                    leading: Icon(cdm.icon,color: Colors.orange),
                    title: Text(cdm.title,
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    trailing: cdm.submenus.isEmpty? Icon(Icons.arrow_right_outlined) :
                    Icon(selected?Icons.keyboard_arrow_up:Icons.keyboard_arrow_down,
                      color: Colors.black,
                    ),
                    children: cdm.submenus.map((subMenu){
                      return sMenuButton(subMenu, false);
                    }).toList()
                );
                },
            ),
          ),
        ],
      ),
    );
  }

  Widget topDrawer(){
    return Padding(
      padding: EdgeInsets.only(top:30, right: 15),
      child: Column(
        children: [
          ListTile(
            title: Center(
              child: Text("FlutterShip",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
            trailing: Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.orange,
                  width: 1
                ),
                borderRadius: BorderRadius.circular(3)
              ),
              child: Center(
                  child: Text('1',
                    style: TextStyle(
                      color: Colors.orange,
                      fontSize: 11
                    ),
                  )
              ),
            ),
          ),
          ListTile(
            title: Center(
              child: Text("FlutterShip",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
            trailing: Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.orange,
                      width: 1
                  ),
                borderRadius: BorderRadius.circular(3)
              ),
              child: Center(
                  child: Text('60',
                    style: TextStyle(
                        color: Colors.orange,
                        fontSize: 10
                    ),
                  )
              ),
            ),
          ),
        ],
      ),
    );
  }



  Widget sMenuButton(String subMenu,bool isTitle){
    return InkWell(
      onTap: (){

        //handle the function
        //if index==0? donothing: doyourlogic here
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(subMenu,
          style: TextStyle(
            fontSize: isTitle? 17:14,
            color: isTitle? Colors.white: Colors.grey,
            fontWeight: FontWeight.bold,
          ),

        ),
      ),
    );
  }



  static List<CDM> cdms = [
    // CDM(Icons.grid_view, "Control", []),

    CDM(Icons.male_outlined, "Men", ["Top Wear", "Shirt","Pant","Panjabi","Jacket","Shoe"]),
    CDM(Icons.female_outlined, "Women", ["Kameez", "Sharee"]),
    CDM(Icons.face, "Kids", []),
    CDM(Icons.grid_view, "Jewellery", []),
    CDM(Icons.branding_watermark_outlined, "Brand", []),
    CDM(Icons.trending_up_outlined, "Popular", []),
    CDM(Icons.explore, "Flash Sales", []),
    CDM(Icons.settings, "Accessories", []),
  ];

}
