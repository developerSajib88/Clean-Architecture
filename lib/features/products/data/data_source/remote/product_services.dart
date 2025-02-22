import 'package:clean_architecture/core/constants/api_urls.dart';
import 'package:clean_architecture/core/network/dio_client.dart';
import 'package:clean_architecture/core/service_locator/service_locator.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

abstract class ProductService{
  Future<Either> fetchAllProducts();
  Future<Either> searchProduct({required String query});
}


class ProductServiceImpl implements ProductService{

  @override
  Future<Either> fetchAllProducts()async{
    try{
      Response response = await sl<DioClient>().get(ApiUrls.allProducts);
      return Right(response);
    }on DioException catch(e){
      return Left(e.response);
    }
  }

  @override
  Future<Either> searchProduct({required String query})async{
    try{
      Response response = await sl<DioClient>().get(
        ApiUrls.searchProducts + query
      );
      return Right(response);
    }on DioException catch(e){
      return Left(e.response);
    }
  }

}