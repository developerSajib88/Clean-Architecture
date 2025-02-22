
import 'package:clean_architecture/core/error/failure.dart';
import 'package:clean_architecture/core/service_locator/service_locator.dart';
import 'package:clean_architecture/features/products/data/data_source/remote/product_services.dart';
import 'package:clean_architecture/features/products/domain/entities/all_products_entity.dart';
import 'package:clean_architecture/features/products/domain/repositories/product_repository.dart';
import 'package:dartz/dartz.dart';

class ProductRepositoryImpl implements ProductRepository{
  @override
  Future<Either<Failure, ProductsEntity>> getAllProducts()async=>
      await sl<ProductService>().fetchAllProducts();

  @override
  Future<Either<Failure, ProductsEntity>> searchProducts({required String query})async=>
      await sl<ProductService>().searchProduct(query: query);

}