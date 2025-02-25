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
      leading: Image.network(
        image,
        width: 100,
        height: 100,
      ),
      title: Text(title),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [Text(subtitle), Text("Price: $price Tk")],
      ),
    );
  }
}
