import 'package:flutter/material.dart';
import 'package:shop/constriant.dart';
import 'package:shop/details/cartButton.dart';
import 'package:shop/details/colorDots.dart';
import 'package:shop/details/counter.dart';
import 'package:shop/model/product.dart';

class DownPart extends StatelessWidget {
  final Product product;
  const DownPart({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: kDefaultPadding * 6,
        horizontal: kDefaultPadding,
      ),
      child: Column(
        children: [
          ColorDot(product: product),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
            child: Text(product.description),
          ),
          Counter(
            product: product,
          ),
          CartButton(product: product),
        ],
      ),
    );
  }
}
