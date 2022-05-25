import 'package:flutter/material.dart';
import 'package:shop/constriant.dart';

import 'package:shop/homePage/items_card.dart';
import 'package:shop/homepage/category.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_back, color: Colors.black)),
        actions: [
          IconButton(
              onPressed: () {}, icon: Icon(Icons.search, color: Colors.black)),
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.shopping_cart_outlined, color: Colors.black)),
          SizedBox(width: kDefaultPadding / 2),
        ],
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Category(),
          ItemsCard(),
        ],
      ),
    );
  }
}
