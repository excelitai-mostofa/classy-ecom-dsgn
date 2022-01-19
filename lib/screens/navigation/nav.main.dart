
import 'package:classy_ecom_desgn/screens/navigation/navbar.dart';
import 'package:flutter/material.dart';

class Navigation extends StatelessWidget {
  const Navigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        title: Center(child: Text('Home page')),
      ),
    );
  }
}

