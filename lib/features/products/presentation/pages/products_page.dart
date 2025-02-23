import 'package:clean_architecture/features/products/presentation/widgets/product_item_view.dart';
import 'package:flutter/material.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Products"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) => ProductItemView(
                        image: "",
                        title: "",
                        subtitle: "",
                        price: 100,
                      )),
            )
          ],
        ),
      ),
    );
  }
}
