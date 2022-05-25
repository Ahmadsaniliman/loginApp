import 'package:flutter/material.dart';
import 'package:shop/constriant.dart';

class Category extends StatelessWidget {
  const Category({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: kDefaultPadding, vertical: kDefaultPadding / 3),
        child: Text(
          'Women',
          style: Theme.of(context).textTheme.headline5!.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
      ),
      CardCategory(),
    ]);
  }
}

class CardCategory extends StatefulWidget {
  const CardCategory({Key? key}) : super(key: key);

  @override
  _CardCategoryState createState() => _CardCategoryState();
}

class _CardCategoryState extends State<CardCategory> {
  List<String> categories = ['Hand Bag', 'Foot Wear', 'Jewellery', 'Dresses'];
  int selectedOne = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 36,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, counter) => CategoryCard(context, counter),
      ),
    );
  }

  CategoryCard(BuildContext context, int counter) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: GestureDetector(
        onTap: () {
          setState(() {
            selectedOne = counter;
          });
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                child: Text(
              categories[counter],
              style: TextStyle(
                fontWeight: selectedOne == counter
                    ? FontWeight.bold
                    : FontWeight.normal,
              ),
            )),
            Container(
              margin: EdgeInsets.only(top: kDefaultPadding / 4),
              height: 6,
              width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: selectedOne == counter ? kTextColor : Colors.transparent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
