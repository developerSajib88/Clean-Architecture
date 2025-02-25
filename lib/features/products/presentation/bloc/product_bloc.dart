import 'package:clean_architecture/core/service_locator/service_locator.dart';
import 'package:clean_architecture/features/products/domain/use_cases/products_use_case.dart';
import 'package:clean_architecture/features/products/domain/use_cases/search_products_use_case.dart';
import 'package:clean_architecture/features/products/presentation/bloc/product_event.dart';
import 'package:clean_architecture/features/products/presentation/bloc/product_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  ProductBloc() : super(ProductInit()) {
    on<FetchProducts>(fetchProducts);
    on<SearchProducts>(searchProducts);
  }

  Future<void> fetchProducts(
      ProductEvent event, Emitter<ProductState> emit) async {
    emit(ProductLoading());
    var result = await sl<ProductsUseCase>().call();
    print(
        "##############################${result}#############################################");
    result.fold((error) => emit(ProductFailure(message: error.message)),
        (data) => emit(ProductLoaded(productsEntity: data)));
  }

  Future<void> searchProducts(
      SearchProducts event, Emitter<ProductState> emit) async {
    emit(ProductLoading());
    final result = await sl<SearchProductUseCase>().call(params: event.query);
    result.fold((error) => emit(ProductFailure(message: error.message)),
        (data) => emit(ProductLoaded(productsEntity: data)));
  }
}
