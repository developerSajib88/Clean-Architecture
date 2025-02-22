import 'package:clean_architecture/core/error/failure.dart';
import 'package:clean_architecture/core/use_case/use_case.dart';
import 'package:clean_architecture/features/products/domain/entities/all_products_entity.dart';
import 'package:dartz/dartz.dart';

class SearchProductUseCase extends UseCase<Either<Failure,ProductsEntity>,String>{
  @override
  Future<Either<Failure, ProductsEntity>> call({String? params}) {
    // TODO: implement cal
    throw UnimplementedError();
  }
  
}