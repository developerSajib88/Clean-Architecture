import 'package:clean_architecture/core/error/failure.dart';
import 'package:clean_architecture/features/products/domain/entities/all_products_entity.dart';
import 'package:dartz/dartz.dart';

abstract class ProductRepository {
  Future<Either<Failure, ProductsEntity>> getAllProducts();
  Future<Either<Failure, ProductsEntity>> searchProducts({required String query});
}