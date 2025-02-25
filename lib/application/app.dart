import 'package:clean_architecture/features/products/presentation/bloc/product_bloc.dart';
import 'package:clean_architecture/features/products/presentation/pages/products_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MultiBlocProvider(
          providers: [BlocProvider(create: (_) => ProductBloc())],
          child: ProductsPage()),
    );
  }
}
