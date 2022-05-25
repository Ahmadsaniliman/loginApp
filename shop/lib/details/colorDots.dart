import 'package:flutter/material.dart';
import 'package:shop/constriant.dart';
import 'package:shop/model/product.dart';

class ColorDot extends StatelessWidget {
  final Product product;
  const ColorDot({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Color',
                style: Theme.of(context)
                    .textTheme
                    .headline6!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: kDefaultPadding / 4,
              ),
              Row(
                children: [
                  Container(
                      padding: EdgeInsets.all(2.5),
                      height: 25,
                      width: 30,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(),
                      ),
                      child: DecoratedBox(
                          decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: product.color,
                      ))),
                  Container(
                      padding: EdgeInsets.all(2.5),
                      height: 25,
                      width: 30,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(),
                      ),
                      child: DecoratedBox(
                          decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFFE6B398),
                      ))),
                  Container(
                      padding: EdgeInsets.all(2.5),
                      height: 25,
                      width: 30,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(),
                      ),
                      child: DecoratedBox(
                          decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFFFB7883),
                      ))),
                ],
              ),
            ],
          ),
        ),
        Expanded(
          child: RichText(
              text: TextSpan(style: TextStyle(color: Colors.black), children: [
            TextSpan(text: 'Size\n'),
            TextSpan(
              text: '12 cm',
              style: Theme.of(context)
                  .textTheme
                  .headline4!
                  .copyWith(fontWeight: FontWeight.bold),
            )
          ])),
        )
      ],
    );
  }
}
