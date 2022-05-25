import 'package:flutter/material.dart';
import 'package:shop/constriant.dart';
import 'package:shop/model/product.dart';

class UpperPart extends StatelessWidget {
  final Product product;
  const UpperPart({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'I love you sweety',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              Text(product.title,
                  style: Theme.of(context).textTheme.headline5!.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      )),
              SizedBox(
                height: kDefaultPadding / 3,
              ),
              Row(
                children: [
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                      text: 'price\n',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    TextSpan(
                        text: '\$234',
                        style: Theme.of(context).textTheme.headline4!.copyWith(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            )),
                  ])),
                  SizedBox(
                    width: kDefaultPadding,
                  ),
                  Expanded(child: Image.asset(product.image)),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
