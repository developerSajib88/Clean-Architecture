import 'package:flutter/material.dart';

class ProductItemView extends StatelessWidget {
  final String image;
  final num price;
  final String title;
  final String subtitle;
  const ProductItemView(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.image,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text("Hello This is Title"),
      subtitle: Text("This is subtitle"),
    );
  }
}
