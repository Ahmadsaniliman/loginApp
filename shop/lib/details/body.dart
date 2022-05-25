import 'package:flutter/material.dart';
import 'package:shop/details/downPart.dart';
import 'package:shop/details/upperPart.dart';
import 'package:shop/model/product.dart';

class BodyParts extends StatelessWidget {
  final Product product;
  const BodyParts({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  // padding: EdgeInsets.only(top: size.height * 0.12),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(30.0),
                    ),
                  ),
                  child: DownPart(
                    product: product,
                  ),
                ),
                UpperPart(
                  product: product,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
