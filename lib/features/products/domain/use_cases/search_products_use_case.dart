import 'package:clean_architecture/core/error/failure.dart';
import 'package:clean_architecture/core/service_locator/service_locator.dart';
import 'package:clean_architecture/core/use_case/use_case.dart';
import 'package:clean_architecture/features/products/domain/entities/all_products_entity.dart';
import 'package:clean_architecture/features/products/domain/repositories/product_repository.dart';
import 'package:dartz/dartz.dart';

class SearchProductUseCase extends UseCase<ProductsEntity, String> {
  @override
  Future<Either<Failure, ProductsEntity>> call({String? params}) {
    print(
        "##############################Hello I am call#############################################");
    return sl<ProductRepository>().searchProducts(query: params!);
  }
}
