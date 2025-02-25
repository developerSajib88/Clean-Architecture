import 'package:clean_architecture/features/products/presentation/bloc/product_bloc.dart';
import 'package:clean_architecture/features/products/presentation/bloc/product_event.dart';
import 'package:clean_architecture/features/products/presentation/bloc/product_state.dart';
import 'package:clean_architecture/features/products/presentation/widgets/product_item_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductsPage extends StatefulWidget {
  const ProductsPage({super.key});

  @override
  State<ProductsPage> createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.microtask(() {
      context.read<ProductBloc>().add(FetchProducts());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Products"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            Expanded(
              child: BlocBuilder<ProductBloc, ProductState>(
                  builder: (context, state) {
                if (state is ProductLoaded) {
                  return ListView.builder(
                      itemCount: state.productsEntity?.products?.length,
                      itemBuilder: (context, index) => ProductItemView(
                            image: state.productsEntity?.products?[index].images
                                    ?.first ??
                                "",
                            title:
                                state.productsEntity?.products?[index].title ??
                                    "",
                            subtitle: state.productsEntity?.products?[index]
                                    .description ??
                                "",
                            price:
                                state.productsEntity?.products?[index].price ??
                                    0.00,
                          ));
                } else if (state is ProductFailure) {
                  return Center(
                    child: Text(state.message),
                  );
                } else {
                  return Center(
                    child: CircularProgressIndicator(
                      color: Colors.blue,
                    ),
                  );
                }
              }),
            ),
          ],
        ),
      ),
    );
  }
}
