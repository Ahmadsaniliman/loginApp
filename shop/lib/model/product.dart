import 'dart:ui';

class Product {
  final int id, size, price;
  final String title, image, description;

  final Color color;

  Product(
      {required this.id,
      required this.title,
      required this.image,
      required this.price,
      required this.description,
      required this.color,
      required this.size});
}

List<Product> product = [
  Product(
      id: 1,
      title: 'Office Code',
      image: 'assets/images/bag_5.png',
      price: 234,
      description:
          'Thank you so much for getting this far, this means you have put alot of time and effort in learning this course. Bravo 97% of people dont have the gerit you have ',
      color: Color(0xFFFB7883),
      size: 12),
  Product(
      id: 2,
      title: 'Belt Bag',
      image: 'assets/images/bag_2.png',
      price: 234,
      description:
          'Thank you so much for getting this far, this means you have put alot of time and effort in learning this course. Bravo 97% of people dont have the gerit you have ',
      color: Color(0xFFD3A984),
      size: 8),
  Product(
      id: 3,
      title: 'Office Code',
      image: 'assets/images/bag_3.png',
      price: 234,
      description:
          'Thank you so much for getting this far, this means you have put alot of time and effort in learning this course. Bravo 97% of people dont have the gerit you have ',
      color: Color(0xFF989493),
      size: 10),
  Product(
      id: 4,
      title: 'Old Fashion',
      image: 'assets/images/bag_4.png',
      price: 234,
      description:
          'Thank you so much for getting this far, this means you have put alot of time and effort in learning this course. Bravo 97% of people dont have the gerit you have ',
      color: Color(0xFFE6B398),
      size: 11),
  Product(
      id: 5,
      title: 'Office Code',
      image: 'assets/images/bag_5.png',
      price: 234,
      description:
          'Thank you so much for getting this far, this means you have put alot of time and effort in learning this course. Bravo 97% of people dont have the gerit you have ',
      color: Color(0xFFFB7883),
      size: 12),
  Product(
      id: 6,
      title: 'Office Code',
      image: 'assets/images/bag_6.png',
      price: 234,
      description:
          'Thank you so much for getting this far, this means you have put alot of time and effort in learning this course. Bravo 97% of people dont have the gerit you have ',
      color: Color(0xFFAEAEAE),
      size: 12),
];
