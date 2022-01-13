import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      type: BottomNavigationBarType.fixed,
      selectedLabelStyle: TextStyle(
        fontWeight: FontWeight.bold,
      ),
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.grey,
      selectedIconTheme: IconThemeData(color: Color(0xFFFF6000)),
      items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite_border_outlined),
          label: 'Whitelist',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart_outlined),
          label: 'Cart',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_circle_outlined),
          label: 'Account',
        ),
      ],

      onTap: (index){
        setState(() {
          _currentIndex = index;
        });
      },
    );
  }
}
