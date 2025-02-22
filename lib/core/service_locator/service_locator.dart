import 'package:clean_architecture/core/network/dio_client.dart';
import 'package:clean_architecture/features/products/data/data_source/remote/product_services.dart';
import 'package:clean_architecture/features/products/data/repositories/product_repository_impl.dart';
import 'package:clean_architecture/features/products/domain/repositories/product_repository.dart';
import 'package:clean_architecture/features/products/domain/use_cases/products_use_case.dart';
import 'package:clean_architecture/features/products/domain/use_cases/search_products_use_case.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

void initServiceLocator(){

  sl.registerSingleton<DioClient>(DioClient());


  // Services
  sl.registerSingleton<ProductService>(ProductServiceImpl());


  // Repositories
  sl.registerSingleton<ProductRepository>(ProductRepositoryImpl());

  // UseCases
  sl.registerSingleton<ProductsUseCase>(ProductsUseCase());
  sl.registerSingleton<SearchProductUseCase>(SearchProductUseCase());

}