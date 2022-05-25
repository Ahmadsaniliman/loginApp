import 'package:flutter/material.dart';
import 'package:shop/constriant.dart';
import 'package:shop/details/detailsPage.dart';
import 'package:shop/model/product.dart';

class ItemsCard extends StatelessWidget {
  const ItemsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: kDefaultPadding,
          horizontal: kDefaultPadding,
        ),
        child: GridView.builder(
            itemCount: product.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: kDefaultPadding,
              crossAxisSpacing: kDefaultPadding,
              childAspectRatio: 0.75,
            ),
            itemBuilder: (context, counter) => ItemCard(
                  product: product[counter],
                )),
      ),
    );
  }
}

class ItemCard extends StatelessWidget {
  final Product product;
  const ItemCard({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailsPage(product: product),
            ));
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: product.color,
              ),
              child: Image.asset(product.image),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: kDefaultPadding / 4),
            child: Text(product.title),
          ),
          Text('\$${product.price}')
        ],
      ),
    );
  }
}
