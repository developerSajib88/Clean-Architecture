import 'package:dartz/dartz.dart';

abstract class ProductRepository {
  Future<Either> getAllProducts();
  Future<Either> searchProducts({required String query});
}