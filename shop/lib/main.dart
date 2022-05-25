import 'package:flutter/material.dart';
import 'package:shop/homePage/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shop App',
      theme: ThemeData(),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
