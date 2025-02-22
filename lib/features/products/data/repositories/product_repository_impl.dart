import 'dart:convert';

import 'package:clean_architecture/core/service_locator/service_locator.dart';
import 'package:clean_architecture/features/products/data/data_source/remote/product_services.dart';
import 'package:clean_architecture/features/products/data/models/all_products_model.dart';
import 'package:clean_architecture/features/products/data/models/product_model.dart';
import 'package:clean_architecture/features/products/domain/repositories/product_repository.dart';
import 'package:dartz/dartz.dart';

class ProductRepositoryImpl implements ProductRepository{

  @override
  Future<Either> getAllProducts()async{
    final returnedData = await sl<ProductService>().fetchAllProducts();

    return returnedData.fold((error) {
      return Left(error);
    }, (data){
      final res = AllProductsModel.fromRawJson(data);
      return Right(res);
    });

  }

  @override
  Future<Either> searchProducts({required String query})async{
    final returnedData = await sl<ProductService>().searchProduct(query: query);
    return returnedData.fold(
        (error){
          return Left(error);
        }, (data){
          final res = ProductModel.fromRawJson(data);
          return Right(data);
    });
  }


}