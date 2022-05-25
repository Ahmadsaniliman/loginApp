import 'package:flutter/material.dart';
import 'package:shop/constriant.dart';
import 'package:shop/model/product.dart';

class CartButton extends StatelessWidget {
  final Product product;
  const CartButton({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: Row(
        children: [
          Container(
            height: 60.0,
            width: 60.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              color: product.color,
            ),
            child: Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
          ),
          SizedBox(
            width: kDefaultPadding / 3,
          ),
          Expanded(
            child: Container(
              height: 60.0,
              width: 60.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: product.color,
              ),
              child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                  ),
                  onPressed: () {},
                  child: Text('Buy Now')),
            ),
          ),
        ],
      ),
    );
  }
}
