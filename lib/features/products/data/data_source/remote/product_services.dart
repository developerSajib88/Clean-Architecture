import 'package:clean_architecture/core/constants/api_urls.dart';
import 'package:clean_architecture/core/error/failure.dart';
import 'package:clean_architecture/core/network/dio_client.dart';
import 'package:clean_architecture/core/service_locator/service_locator.dart';
import 'package:clean_architecture/features/products/data/models/all_products_model.dart';
import 'package:clean_architecture/features/products/domain/entities/all_products_entity.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

abstract class ProductService{
  Future<Either<Failure,ProductsEntity>> fetchAllProducts();
  Future<Either<Failure,ProductsEntity>> searchProduct({required String query});
}


class ProductServiceImpl implements ProductService{

  @override
  Future<Either<Failure, ProductsEntity>> fetchAllProducts()async{
    try{
      Response response = await sl<DioClient>().get(ApiUrls.allProducts);
      ProductsEntity productsEntity = AllProductsModel.fromRawJson(response.data).toEntity();
      return Right(productsEntity);
    } catch(error){
        return Left(error as Failure);
    }
  }

  @override
  Future<Either<Failure, ProductsEntity>> searchProduct({required String query})async{
    try{
      Response response = await sl<DioClient>().get(
        ApiUrls.searchProducts + query
      );
      ProductsEntity productsEntity = AllProductsModel.fromRawJson(response.data).toEntity();
      return Right(productsEntity);
    }catch(error){
      return Left(error as Failure);
    }
  }
}