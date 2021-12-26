import 'package:flutter/material.dart';

class Sales{
  final String image;
  final String price;
  Sales(this.image, this.price);
}

class AllFruits{
  final String image;
  final String description;
  final String price;
  final Color color;
  AllFruits(this.image, this.description, this.price, this.color);
}

List<Sales> sales = [
  Sales("", "\$34"),
  Sales("", "\$20"),
  Sales("", "\$15"),
  Sales("", "\$5")
];

