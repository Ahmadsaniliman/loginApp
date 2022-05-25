import 'package:flutter/material.dart';
import 'package:shop/constriant.dart';
import 'package:shop/model/product.dart';

class Counter extends StatefulWidget {
  final Product product;
  const Counter({
    required this.product,
    Key? key,
  }) : super(key: key);

  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int counter = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 40.0,
          width: 40.0,
          child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                padding: EdgeInsets.zero,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              onPressed: () {
                setState(() {
                  if (counter > 1) {
                    counter--;
                  }
                });
              },
              child: Icon(Icons.remove)),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
          child: Text(counter.toString().padLeft(2, '0')),
        ),
        SizedBox(
          height: 40.0,
          width: 40.0,
          child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                  padding: EdgeInsets.zero,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0))),
              onPressed: () {
                setState(() {
                  counter++;
                });
              },
              child: Icon(Icons.add)),
        ),
        SizedBox(width: kDefaultPadding * 8),
        Container(
          height: 40.0,
          width: 40.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Color(0xFFAEAEAE),
          ),
          child: Icon(
            Icons.phone_locked_outlined,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
