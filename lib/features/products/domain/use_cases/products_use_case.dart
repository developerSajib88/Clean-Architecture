import 'package:clean_architecture/core/error/failure.dart';
import 'package:clean_architecture/core/service_locator/service_locator.dart';
import 'package:clean_architecture/core/use_case/use_case.dart';
import 'package:clean_architecture/features/products/domain/entities/all_products_entity.dart';
import 'package:clean_architecture/features/products/domain/repositories/product_repository.dart';
import 'package:dartz/dartz.dart';

class ProductsUseCase extends UseCase<Either<Failure,ProductsEntity>,dynamic>{
  @override
  Future<Either<Failure, ProductsEntity>> call({params})async=>
      await sl<ProductRepository>().getAllProducts();

}
