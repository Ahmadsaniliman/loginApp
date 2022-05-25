import 'package:flutter/material.dart';
import 'package:shop/constriant.dart';
import 'package:shop/details/body.dart';
import 'package:shop/model/product.dart';

class DetailsPage extends StatelessWidget {
  final Product product;
  const DetailsPage({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: AppBar(
        backgroundColor: product.color,
        elevation: 0,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.shopping_cart_outlined,
              )),
          SizedBox(width: kDefaultPadding / 2),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            BodyParts(product: product),
          ],
        ),
      ),
    );
  }
}
