import 'package:flutter/material.dart';
class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      //  drawer: Drawer(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 80),
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 60),
                child: Row(
                  children: [
                    Text("Coupons",),

                    SizedBox(width: 30,),

                    Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                          borderRadius:
                          BorderRadius.circular(5),
                          border: Border.all(
                            color: Color(0xffFF6000),
                            width: 2,
                          )),
                      child: Center(
                        child: Text("1"),
                      ),

                    ),

                  ],
                ),


              ),
              SizedBox(height: 10),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 60),
                child: Row(
                  children: [
                    Text("Others",),

                    SizedBox(width: 44,),

                    Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                          borderRadius:
                          BorderRadius.circular(5),
                          border: Border.all(
                            color: Colors.orange,
                            width: 2,
                          )),
                      child: Center(
                        child: Text(
                          "60",
                          style: TextStyle(
                              color: Colors.orange,
                              fontSize: 10
                          ),
                        ),
                      ),

                    ),

                  ],
                ),

              ),
              SizedBox(height: 30,),
              Container(height: 1,
                color: Colors.grey,),

              SizedBox(height: 10,),

              Container(
                height: 430,
                width: 270,
                decoration: BoxDecoration(
                    borderRadius:
                    BorderRadius.circular(5),
                    border: Border.all(
                      color: Colors.orange,
                      width: 2,
                    )
                ),

                child: ListView.builder(
                  itemCount: menData.length,
                    itemBuilder: (BuildContext context, int index)=>Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                                child: Column(
                                  children: [
                                    Icon(Icons.watch),
                                    Container(
                                      width: 0,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                            color: Colors.grey,
                                            width: .5,
                                          )
                                      ),
                                    )
                                  ],
                                )
                            ),
                            Expanded(
                              flex: 10,
                              child: EntryItem(
                                  menData[index]
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(child: Icon(Icons.watch)),
                            Expanded(
                              flex: 10,
                              child: EntryItem(
                                  kidData[index]
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                ),





              )

            ],
          ),




        ),
      ),



    );



  }
}




class Entry {
  final String title;
  final List<Entry>
  children;
  Entry(this.title,[this.children = const <Entry>[]]);
}

final List<Entry> menData = <Entry>[
  Entry('Men', <Entry>[
    Entry('Top Wear'),
    Entry('T-Shirt',
      <Entry>[
        Entry('Full-Sleeve'),
        Entry('Half-Sleeve'),
      ],
    ),
    Entry('Fatua'),
    Entry('Pant'),
    Entry('Panjabi'),
    Entry('Jacket'),
    Entry('Blazer'),
    Entry('Shoe'),
  ],
  ),
];

final List<Entry> womenData = <Entry>[
  Entry('Women', <Entry>[
    Entry('Selwar Kameez'),
    Entry('Sharee'),
  ]
  ),
];

// Entry('Jewellery'),
// Entry('Winter Collection'),
// Entry('Popular'),
// Entry('Flash Sale'),
// Entry('Accessories'),


final List<Entry> kidData = <Entry>[
  Entry('Kids'),
];
final List<Entry> winterData = <Entry>[
  Entry('winter Collection'),
];



// Create the Widget for the row
class EntryItem extends StatelessWidget {
  const EntryItem(this.entry);
  final Entry entry;

  // This function recursively creates the multi-level list rows.
  Widget _buildTiles(Entry root) {
    if (root.children.isEmpty) {
      return ListTile(
        title: Text(root.title),
      );
    }
    return ExpansionTile(
      key: PageStorageKey<Entry>(root),
      title: Text(root.title),
      children: root.children.map<Widget>(_buildTiles).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildTiles(entry);
  }
}