import 'package:dartz/dartz.dart';

abstract class ProductService{
  Future<Either> fetchAllProducts();
  Future<Either> searchProduct({required String query});
}

class ProductServiceImpl implements ProductService{
  @override
  Future<Either> fetchAllProducts() {
    // TODO: implement fetchAllProducts
    throw UnimplementedError();
  }

  @override
  Future<Either> searchProduct({required String query}) {
    // TODO: implement searchProduct
    throw UnimplementedError();
  }
}